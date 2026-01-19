package de.jodabyte.restapilabs.azure.api.util;

import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;

import java.net.URI;

public class LocationHeaderHelper {

    /**
     * Builds a URI for the Location header based on the given controller type, method name, and path variable.
     */
    public static URI getLocationHeaderUri(Class<?> controllerType, String methodName, String pathVariable) {
        return MvcUriComponentsBuilder
                .fromMethodName(controllerType, methodName, pathVariable)
                .build()
                .toUri();
    }
}
