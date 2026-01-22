package de.jodabyte.restapilabs.azure.http;

import de.jodabyte.restapilabs.azure.common.TestWithTestContainers;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.mvc.method.RequestMappingInfo;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;

import java.util.Optional;
import java.util.Set;
import java.util.regex.Pattern;

import static org.assertj.core.api.Assertions.assertThat;

class ResourceLocatorsConventionTests extends TestWithTestContainers {

    private static final Pattern KEBAB_CASE_PATH =
            Pattern.compile("^/([a-z0-9]+(-[a-z0-9]+)*)?(/[a-z0-9]+(-[a-z0-9]+)*|/\\{.+\\})*$");

    @Autowired
    private RequestMappingHandlerMapping handlerMapping;

    @Test
    @DisplayName("""
            Given all registered request mappings
            When inspecting the paths
            Then all segments must be kebab-case.
            """)
    void allEndpointsShouldBeKebabCase() {
        var requestMappings = handlerMapping.getHandlerMethods().keySet();
        requestMappings.forEach(this::assertMapping);
    }

    /**
     * Assert that all path patterns in the given RequestMappingInfo match the kebab-case pattern.
     */
    private void assertMapping(RequestMappingInfo info) {
        getPathPatternsIfPresent(info).ifPresent(
                patterns -> patterns.forEach(this::assertPathMatchesKebabCasePattern)
        );
    }

    /**
     * Get path patterns from RequestMappingInfo or return empty Optional if none exist.
     */
    private Optional<Set<String>> getPathPatternsIfPresent(RequestMappingInfo info) {
        return info.getPathPatternsCondition() == null
                ? Optional.empty()
                : Optional.of(info.getPathPatternsCondition().getPatternValues());
    }

    /**
     * Assert that the given path matches the kebab-case pattern.
     */
    private void assertPathMatchesKebabCasePattern(String path) {
        assertThat(KEBAB_CASE_PATH.matcher(path).matches())
                .as("Path '%s' must be kebab-case", path)
                .isTrue();
    }
}
