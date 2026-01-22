package de.jodabyte.restapilabs.azure.api.repeatablerequest.model;

import org.springframework.http.HttpStatusCode;

import java.io.Serializable;
import java.util.Map;

public record RepeatableResponse(HttpStatusCode status, Map<String, String> headers) implements Serializable {

    public static RepeatableResponse ofResponseEntity(org.springframework.http.ResponseEntity<?> responseEntity) {
        return new RepeatableResponse(
                responseEntity.getStatusCode(),
                responseEntity.getHeaders().toSingleValueMap()
        );
    }
}
