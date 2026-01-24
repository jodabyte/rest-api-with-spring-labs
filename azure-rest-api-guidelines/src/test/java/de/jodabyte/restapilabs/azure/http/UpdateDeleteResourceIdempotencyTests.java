package de.jodabyte.restapilabs.azure.http;

import de.jodabyte.restapilabs.azure.api.dto.ProductCreateDto;
import de.jodabyte.restapilabs.azure.api.dto.ProductMapper;
import de.jodabyte.restapilabs.azure.common.TestWithTestContainers;
import de.jodabyte.restapilabs.azure.domain.model.Product;
import de.jodabyte.restapilabs.azure.domain.repository.ProductRepository;
import org.hamcrest.Matchers;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.webmvc.test.autoconfigure.AutoConfigureMockMvc;
import org.springframework.test.web.servlet.MockMvc;

import static de.jodabyte.restapilabs.azure.common.ModelFactory.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

/**
 * Tests for HTTP PUT and DELETE idempotency.
 */
@AutoConfigureMockMvc
public class UpdateDeleteResourceIdempotencyTests extends TestWithTestContainers {

    @Autowired
    private MockMvc sut;

    @Autowired
    private ProductRepository repository;

    @Autowired
    private ProductMapper mapper;

    @Test
    @DisplayName("""
            Given a PUT request to update a resource
            When the same request is performed multiple times
            Then the update is preformed each time and a successful response is returned.
            """)
    void updatesAreIdempotent() throws Exception {
        ProductCreateDto dto = createProductCreateDto();
        Product product = this.repository.save(mapper.map(dto));
        var request = createRequestForPut(mapper.map(product));

        this.sut.perform(request)
                .andExpect(status().isOk())
                .andExpect(content().string(Matchers.not(Matchers.emptyString())));

        this.sut.perform(request)
                .andExpect(status().isOk())
                .andExpect(content().string(Matchers.not(Matchers.emptyString())));
    }

    @Test
    @DisplayName("""
            Given a DELETE request to delete a resource
            When the same request is performed multiple times
            Then the delete is preformed once and subsequent requests return just a NoContent response.
            """)
    void deletesAreIdempotent() throws Exception {
        ProductCreateDto dto = createProductCreateDto();
        Product product = this.repository.save(mapper.map(dto));
        var request = createRequestForDelete(product.getId());

        this.sut.perform(request)
                .andExpect(status().isNoContent())
                .andExpect(content().string(Matchers.emptyString()));

        this.sut.perform(request)
                .andExpect(status().isNoContent())
                .andExpect(content().string(Matchers.emptyString()));
    }
}
