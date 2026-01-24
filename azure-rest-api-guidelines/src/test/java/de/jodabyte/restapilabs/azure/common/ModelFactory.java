package de.jodabyte.restapilabs.azure.common;

import de.jodabyte.restapilabs.azure.api.dto.PriceDto;
import de.jodabyte.restapilabs.azure.api.dto.ProductCreateDto;
import de.jodabyte.restapilabs.azure.api.dto.ProductDto;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import tools.jackson.databind.ObjectMapper;

import java.math.BigDecimal;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;

/**
 * Factory class for creating test models and prepared HTTP requests.
 */
public class ModelFactory {

    private static final ObjectMapper objectMapper = new ObjectMapper();

    public static MockHttpServletRequestBuilder createRequestForPost() {
        return createRequestForPost(createProductCreateDto());
    }

    public static MockHttpServletRequestBuilder createRequestForPost(ProductCreateDto dto) {
        return post("/products")
                .contentType(MediaType.APPLICATION_JSON)
                .content(objectMapper.writeValueAsString(dto));
    }

    public static MockHttpServletRequestBuilder createRequestForPut(ProductDto dto) {
        return put("/products/" + dto.id())
                .contentType(MediaType.APPLICATION_JSON)
                .content(objectMapper.writeValueAsString(dto));
    }

    public static MockHttpServletRequestBuilder createRequestForDelete(Long id) {
        return delete("/products/" + id)
                .contentType(MediaType.APPLICATION_JSON);
    }

    public static ProductDto createProductDto(Long id) {
        return new ProductDto(
                id,
                "Back to the Future",
                "Movie",
                new PriceDto(new BigDecimal("99.99"), "EUR"),
                "Time travel",
                Stream.of("Comedy", "Sci-Fi", "Adventure").collect(Collectors.toSet())
        );
    }

    public static ProductCreateDto createProductCreateDto() {
        return new ProductCreateDto(
                "Back to the Future",
                "Movie",
                new PriceDto(new BigDecimal("99.99"), "EUR"),
                "Time travel",
                Stream.of("Comedy", "Sci-Fi", "Adventure").collect(Collectors.toSet())
        );
    }
}
