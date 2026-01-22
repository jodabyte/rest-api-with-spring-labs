package de.jodabyte.restapilabs.azure.api.repeatablerequest;

import de.jodabyte.restapilabs.azure.api.repeatablerequest.model.RepeatabilityRequest;
import de.jodabyte.restapilabs.azure.api.repeatablerequest.model.RepeatabilityResponse;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.time.DateTimeException;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Optional;
import java.util.UUID;

import static de.jodabyte.restapilabs.azure.api.repeatablerequest.RepeatabilityContract.HEADER_FIRST_SENT;
import static de.jodabyte.restapilabs.azure.api.repeatablerequest.RepeatabilityContract.HEADER_REQUEST_ID;

/**
 * Mapping service for Repeatability headers.
 */
@Service
@Slf4j
public class RepeatabilityMapper {

    /**
     * Maps the repeatability headers from the HTTP request to a {@link RepeatabilityRequest} object.
     *
     * @throws IllegalRepeatabilityHeadersException if the headers are missing or invalid.
     */
    public RepeatabilityRequest map(HttpServletRequest request) {
        Optional<UUID> requestId = mapRequestId(request.getHeader(HEADER_REQUEST_ID));
        Optional<LocalDateTime> requestFirstSend = mapFirstSent(request.getHeader(HEADER_FIRST_SENT));

        if (requestId.isEmpty() || requestFirstSend.isEmpty()) {
            throw new IllegalRepeatabilityHeadersException("Failed to parse Repeatability-Headers");
        }

        RepeatabilityRequest repeatableRequest = new RepeatabilityRequest();
        repeatableRequest.setId(requestId.get());
        repeatableRequest.setFirstSend(requestFirstSend.get());

        return repeatableRequest;
    }

    /**
     * Maps a {@link RepeatabilityResponse} to a {@link ResponseEntity}.
     */
    public ResponseEntity<Void> map(RepeatabilityResponse repeatableResponse) {
        ResponseEntity.BodyBuilder responseBuilder = ResponseEntity.status(repeatableResponse.status());
        repeatableResponse.headers().forEach(responseBuilder::header);
        return responseBuilder.build();
    }

    /**
     * Maps a {@link ResponseEntity} to a {@link RepeatabilityResponse}.
     */
    public RepeatabilityResponse map(ResponseEntity<?> responseEntity) {
        return new RepeatabilityResponse(
                responseEntity.getStatusCode(),
                responseEntity.getHeaders().toSingleValueMap()
        );
    }

    /**
     * Maps the Repeatability-Request-ID header to a {@link UUID}.
     *
     * @return an {@link Optional} containing the {@link UUID} if present and valid, otherwise an empty Optional.
     */
    private Optional<UUID> mapRequestId(String requestId) {
        Optional<UUID> result = Optional.empty();

        try {
            if (StringUtils.isBlank(requestId)) {
                throw new IllegalArgumentException("Repeatability-Request-ID header is missing");
            }

            result = Optional.of(UUID.fromString(requestId));
        } catch (IllegalArgumentException e) {
            log.warn("Failed to parse Repeatability-Request-ID Header", e);
        }

        return result;
    }

    /**
     * Maps the Repeatability-First-Sent header to a {@link LocalDateTime}.
     *
     * @return an {@link Optional} containing the {@link LocalDateTime} if present and valid, otherwise an empty Optional.
     */
    private Optional<LocalDateTime> mapFirstSent(String firstSend) {
        Optional<LocalDateTime> result = Optional.empty();

        try {
            if (StringUtils.isBlank(firstSend)) {
                throw new IllegalArgumentException("Repeatability-First-Sent header is missing");
            }

            LocalDateTime dateTime = ZonedDateTime.parse(firstSend, DateTimeFormatter.RFC_1123_DATE_TIME)
                    .withZoneSameInstant(ZoneId.systemDefault())
                    .toLocalDateTime();
            result = Optional.of(dateTime);
        } catch (DateTimeException | IllegalArgumentException e) {
            log.warn("Failed to parse Repeatability-First-Sent Header", e);
        }

        return result;
    }
}
