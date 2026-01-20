package de.jodabyte.restapilabs.azure.config;

import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Configuration;

@Configuration
@EnableCaching
public class CacheConfig {

    public static final String REPEATABILITY_CACHE = "REPEATABILITY_CACHE";

}
