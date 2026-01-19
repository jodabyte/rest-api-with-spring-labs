package de.jodabyte.restapilabs.azure.api.repeatablerequest;

/**
 * Exception thrown when the repeatability headers in an HTTP POST request are missing or invalid.
 */
public class IllegalRepeatabilityHeadersException extends RuntimeException {

    public IllegalRepeatabilityHeadersException(String message) {
        super(message);
    }

}
