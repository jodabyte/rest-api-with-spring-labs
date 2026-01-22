package de.jodabyte.restapilabs.azure.api.repeatablerequest.model;

import org.springframework.http.HttpStatusCode;

import java.io.Serializable;
import java.util.Map;

/**
 * A representation of an {@link org.springframework.http.ResponseEntity} that can be cached.
 */
public record RepeatabilityResponse(HttpStatusCode status, Map<String, String> headers) implements Serializable {
}
