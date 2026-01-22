package de.jodabyte.restapilabs.azure.tc;

import com.redis.testcontainers.RedisContainer;
import org.springframework.boot.test.context.TestConfiguration;
import org.springframework.boot.testcontainers.service.connection.ServiceConnection;
import org.springframework.context.annotation.Bean;

@TestConfiguration
public class TestContainerConfig {

    @Bean
    @ServiceConnection
    RedisContainer redisContainer() {
        return new RedisContainer(RedisContainer.DEFAULT_IMAGE_NAME.withTag(RedisContainer.DEFAULT_TAG));
    }
}
