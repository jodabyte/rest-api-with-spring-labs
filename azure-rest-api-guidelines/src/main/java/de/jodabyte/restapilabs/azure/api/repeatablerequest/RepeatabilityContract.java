package de.jodabyte.restapilabs.azure.api.repeatablerequest;

/**
 * Contract for repeatability concern.
 */
public final class RepeatabilityContract {

    public static final String HEADER_REQUEST_ID = "Repeatability-Request-ID";
    public static final String HEADER_FIRST_SENT = "Repeatability-First-Sent";
    public static final String HEADER_RESULT = "Repeatability-Result";
    public static final String REJECTED = "rejected";
    public static final String ACCEPTED = "accepted";


    private RepeatabilityContract() {
        // prevent instantiation
    }

}
