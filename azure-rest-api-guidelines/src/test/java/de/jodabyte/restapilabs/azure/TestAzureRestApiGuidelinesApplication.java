package de.jodabyte.restapilabs.azure;

import de.jodabyte.restapilabs.azure.tc.TestContainerConfig;
import org.springframework.boot.SpringApplication;

/**
 * Application class used to start the {@link AzureRestApiGuidelinesApplication} with the {@link TestContainerConfig}
 * for local development and testing.
 */
public class TestAzureRestApiGuidelinesApplication {

    static void main(String[] args) {
        SpringApplication
                .from(AzureRestApiGuidelinesApplication::main)
                .with(TestContainerConfig.class)
                .run(args);
    }
}
