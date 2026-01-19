package de.jodabyte.restapilabs.azure.api;

import de.jodabyte.restapilabs.azure.api.repeatablerequest.RepeatabilityContract;
import org.springframework.http.ResponseEntity;

import static de.jodabyte.restapilabs.azure.api.util.LocationHeaderHelper.getLocationHeaderUri;


public abstract class BaseRestController {

    /**
     * Builds a ResponseEntity for a repeatable POST request.
     */
    protected ResponseEntity<Void> getRepeatabilityResponse(String methodName, String id) {
        return ResponseEntity.created(getLocationHeaderUri(
                        this.getClass(),
                        methodName,
                        id)
                )
                .header(RepeatabilityContract.HEADER_RESULT, RepeatabilityContract.ACCEPTED)
                .build();
    }

}
