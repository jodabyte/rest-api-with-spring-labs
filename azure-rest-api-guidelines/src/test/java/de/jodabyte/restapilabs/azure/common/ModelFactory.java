package de.jodabyte.restapilabs.azure.common;

import de.jodabyte.restapilabs.azure.api.dto.PriceDto;
import de.jodabyte.restapilabs.azure.api.dto.ProductDto;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import tools.jackson.databind.ObjectMapper;

import java.math.BigDecimal;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;

/**
 * Factory class for creating test models and prepared HTTP requests.
 */
public class ModelFactory {

    private static final ObjectMapper objectMapper = new ObjectMapper();

    public static MockHttpServletRequestBuilder createPreparedRequest(String reference) {
        return createPreparedRequest(createProductDto(reference));
    }

    public static MockHttpServletRequestBuilder createPreparedRequest(ProductDto dto) {
        return post("/products")
                .contentType(MediaType.APPLICATION_JSON)
                .content(objectMapper.writeValueAsString(dto));
    }

    public static ProductDto createProductDto(String reference) {
        return new ProductDto(
                reference,
                "Back to the Future",
                "Movie",
                new PriceDto(new BigDecimal("99.99"), "EUR"),
                "Time travel",
                Stream.of("Comedy", "Sci-Fi", "Adventure").collect(Collectors.toSet())
        );
    }
}
