package de.jodabyte.restapilabs.azure.api.repeatablerequest.model;

import lombok.NonNull;
import org.springframework.http.ResponseEntity;

public record RepeatableResponse(@NonNull ResponseEntity<?> response) {
}
