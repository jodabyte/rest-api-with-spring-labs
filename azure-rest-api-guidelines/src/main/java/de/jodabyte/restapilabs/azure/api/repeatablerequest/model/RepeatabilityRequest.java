package de.jodabyte.restapilabs.azure.api.repeatablerequest.model;

import lombok.Data;

import java.time.LocalDateTime;
import java.util.UUID;

/**
 * A representation of a repeatability request. It contains the request identifier
 * {@link de.jodabyte.restapilabs.azure.api.repeatablerequest.RepeatabilityContract#HEADER_REQUEST_ID} and the timestamp
 * {@linkplain  de.jodabyte.restapilabs.azure.api.repeatablerequest.RepeatabilityContract#HEADER_FIRST_SENT} of when the
 * request was first send.
 */
@Data
public class RepeatabilityRequest {

    private UUID id;
    private LocalDateTime firstSend;
}
