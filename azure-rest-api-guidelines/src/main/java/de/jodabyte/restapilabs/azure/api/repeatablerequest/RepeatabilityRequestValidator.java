package de.jodabyte.restapilabs.azure.api.repeatablerequest;

import de.jodabyte.restapilabs.azure.api.repeatablerequest.model.RepeatabilityRequest;
import de.jodabyte.restapilabs.azure.api.repeatablerequest.model.RepeatabilityResponse;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

import java.util.Optional;

/**
 * Aspect for validating and handling repeatable POST requests.
 */
@Component
@Aspect
@Slf4j
public class RepeatabilityRequestValidator {

    private final HttpServletRequest request;
    private final RepeatabilityRepository cache;
    private final RepeatabilityMapper mapper;

    public RepeatabilityRequestValidator(
            HttpServletRequest request,
            RepeatabilityRepository cache,
            RepeatabilityMapper mapper
    ) {
        this.request = request;
        this.cache = cache;
        this.mapper = mapper;
    }

    @Around(value = "@annotation(de.jodabyte.restapilabs.azure.api.repeatablerequest.PostRepeatable)")
    public Object validate(ProceedingJoinPoint pjp) throws Throwable {
        RepeatabilityRequest repeatableRequest = this.mapper.map(this.request);
        Optional<RepeatabilityResponse> cachedResponse = this.cache.findResponse(repeatableRequest);

        if (cachedResponse.isPresent()) {
            log.info("Returning cached response for repeatable request: {}", repeatableRequest);
            return this.mapper.map(cachedResponse.get());
        }

        Object result = pjp.proceed();

        if (result instanceof ResponseEntity<?> response) {
            this.cache.saveResponse(repeatableRequest, this.mapper.map(response));
            log.info("Cached response for repeatable request: {}", repeatableRequest);
        } else {
            log.warn("Response is not of type ResponseEntity, cannot cache response for repeatable request: {}", repeatableRequest);
        }

        return result;
    }
}
