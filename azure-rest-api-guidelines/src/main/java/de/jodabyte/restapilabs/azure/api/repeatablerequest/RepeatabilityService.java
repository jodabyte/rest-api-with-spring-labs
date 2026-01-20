package de.jodabyte.restapilabs.azure.api.repeatablerequest;

import de.jodabyte.restapilabs.azure.api.repeatablerequest.model.RepeatableRequest;
import de.jodabyte.restapilabs.azure.api.repeatablerequest.model.RepeatableResponse;
import de.jodabyte.restapilabs.azure.config.CacheConfig;
import org.springframework.cache.Cache;
import org.springframework.cache.CacheManager;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class RepeatabilityService {

    private final Cache cache;

    public RepeatabilityService(CacheManager cacheManager) {
        this.cache = cacheManager.getCache(CacheConfig.REPEATABILITY_CACHE);
    }

    public Optional<RepeatableResponse> findResponse(RepeatableRequest request) {
        Optional<RepeatableResponse> result = Optional.empty();

        if (request != null) {
            result = Optional.ofNullable(this.cache.get(request, RepeatableResponse.class));
        }

        return result;
    }

    public void saveResponse(RepeatableRequest request, RepeatableResponse response) {
        this.cache.put(request, response);
    }
}
