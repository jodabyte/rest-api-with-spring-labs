package de.jodabyte.restapilabs.azure.api.repeatablerequest;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

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
 * Aspect for validating repeatable POST requests.
 */
@Component
@Aspect
@Slf4j
public class RepeatabilityRequestValidator {

    private final HttpServletRequest request;

    public RepeatabilityRequestValidator(HttpServletRequest request) {
        this.request = request;
    }

    // TODO params

    @Around(value = "@annotation(org.springframework.web.bind.annotation.PostMapping)")
    public Object validate(ProceedingJoinPoint pjp) throws Throwable {
        log.info("Validating");
        RepeatableRequest repeatableRequest = getRepeatableRequest();

        Object retVal = pjp.proceed();

        return retVal;
    }

    /**
     * Constructs a RepeatableRequest object by extracting and validating the Repeatability
     * headers from the HTTP request.
     *
     * @throws IllegalRepeatabilityHeadersException if the headers are missing or invalid.
     */
    private RepeatableRequest getRepeatableRequest() {
        Optional<UUID> requestId = getRepeatabilityRequestId();
        Optional<LocalDateTime> requestCreatedAt = getRepeatabilityFirstSent();

        if (requestId.isEmpty() || requestCreatedAt.isEmpty()) {
            throw new IllegalRepeatabilityHeadersException("Failed to parse Repeatability-Headers");
        }

        RepeatableRequest repeatableRequest = new RepeatableRequest();
        repeatableRequest.setId(requestId.get());
        repeatableRequest.setCreatedAt(requestCreatedAt.get());

        return repeatableRequest;
    }

    /**
     * Extracts and validates the Repeatability-Request-ID header from the HTTP request.
     *
     * @return an Optional containing the UUID if present and valid, otherwise an empty Optional.
     */
    private Optional<UUID> getRepeatabilityRequestId() {
        Optional<UUID> requestUUID = Optional.empty();

        String requestId = this.request.getHeader(HEADER_REQUEST_ID);
        try {
            if (StringUtils.isBlank(requestId)) {
                throw new IllegalArgumentException("Header is missing");
            }

            requestUUID = Optional.of(UUID.fromString(requestId));
        } catch (IllegalArgumentException e) {
            log.warn("Failed to parse Repeatability-Request-ID Header", e);
        }

        return requestUUID;
    }

    /**
     * Extracts and validates the Repeatability-First-Sent header from the HTTP request.
     *
     * @return an Optional containing the LocalDateTime if present and valid, otherwise an empty Optional.
     */
    private Optional<LocalDateTime> getRepeatabilityFirstSent() {
        Optional<LocalDateTime> createdAt = Optional.empty();

        try {
            String firstSend = this.request.getHeader(HEADER_FIRST_SENT);

            if (StringUtils.isBlank(firstSend)) {
                throw new IllegalArgumentException("Header is missing");
            }

            LocalDateTime dateTime = ZonedDateTime.parse(firstSend, DateTimeFormatter.RFC_1123_DATE_TIME)
                    .withZoneSameInstant(ZoneId.systemDefault())
                    .toLocalDateTime();
            createdAt = Optional.of(dateTime);
        } catch (DateTimeException | IllegalArgumentException e) {
            log.warn("Failed to parse Repeatability-First-Sent Header", e);
        }

        return createdAt;
    }
}
