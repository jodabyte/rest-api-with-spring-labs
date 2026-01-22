package de.jodabyte.restapilabs.azure.api.repeatablerequest;

import de.jodabyte.restapilabs.azure.api.repeatablerequest.model.RepeatabilityRequest;
import de.jodabyte.restapilabs.azure.api.repeatablerequest.model.RepeatabilityResponse;
import de.jodabyte.restapilabs.azure.config.CacheConfig;
import org.springframework.cache.Cache;
import org.springframework.cache.CacheManager;
import org.springframework.stereotype.Component;

import java.util.Optional;

/**
 * Repository for storing and retrieving repeatability responses in/from the cache.
 */
@Component
public class RepeatabilityRepository {

    private final Cache cache;

    public RepeatabilityRepository(CacheManager cacheManager) {
        this.cache = cacheManager.getCache(CacheConfig.REPEATABILITY_CACHE);
    }

    /**
     * Finds the cached response for the given request, if it exists.
     */
    public Optional<RepeatabilityResponse> findResponse(RepeatabilityRequest request) {
        Optional<RepeatabilityResponse> result = Optional.empty();

        if (request != null) {
            result = Optional.ofNullable(this.cache.get(request, RepeatabilityResponse.class));
        }

        return result;
    }

    /**
     * Saves the response for the given request in the cache.
     */
    public void saveResponse(RepeatabilityRequest request, RepeatabilityResponse response) {
        this.cache.put(request, response);
    }
}
