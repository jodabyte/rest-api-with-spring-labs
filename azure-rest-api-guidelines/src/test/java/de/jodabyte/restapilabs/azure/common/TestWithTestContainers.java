package de.jodabyte.restapilabs.azure.common;

import de.jodabyte.restapilabs.azure.tc.TestContainerConfig;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Import;

/**
 * Base class for tests that require TestContainers setup.
 */
@SpringBootTest
@Import(TestContainerConfig.class)
public abstract class TestWithTestContainers {
}
