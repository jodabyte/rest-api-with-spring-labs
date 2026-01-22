package de.jodabyte.restapilabs.azure.api;

import de.jodabyte.restapilabs.azure.api.repeatablerequest.RepeatabilityContract;
import org.springframework.http.ResponseEntity;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;

import java.net.URI;

/**
 * Base class for all REST controllers providing common functionality.
 */
public abstract class AbstractController {

    /**
     * Builds a {@link ResponseEntity} with 201 Created status and with the Location header set to the URI of the
     * created resource.
     */
    protected ResponseEntity<Void> get201CreatedResponse(String methodName, String id) {
        return ResponseEntity.created(getLocationHeaderUri(
                        this.getClass(),
                        methodName,
                        id)
                )
                .header(RepeatabilityContract.HEADER_RESULT, RepeatabilityContract.ACCEPTED)
                .build();
    }

    /**
     * Builds a {@link URI} for the Location header based on the given controller type, method name, and path variable.
     */
    protected URI getLocationHeaderUri(Class<?> controllerType, String methodName, String pathVariable) {
        return MvcUriComponentsBuilder
                .fromMethodName(controllerType, methodName, pathVariable)
                .build()
                .toUri();
    }

}
