package de.jodabyte.restapilabs.azure.http;

import de.jodabyte.restapilabs.azure.api.dto.PriceDto;
import de.jodabyte.restapilabs.azure.api.dto.ProductDto;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.webmvc.test.autoconfigure.AutoConfigureMockMvc;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import tools.jackson.databind.ObjectMapper;

import java.math.BigDecimal;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.UUID;

import static de.jodabyte.restapilabs.azure.api.repeatablerequest.RepeatabilityContract.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.header;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
class RepeatablePOSTRequestsTests {

    private final ObjectMapper objectMapper = new ObjectMapper();

    @Autowired
    private MockMvc sut;

    @Test
    @DisplayName("""
            Given a POST request without the mandatory Repeatability headers
            When the request is performed
            Then a BadRequest status response is returned with the REJECTED header value.
            """)
    void missingMandatoryHeaders() throws Exception {
        this.sut.perform(getPreparedRequest())
                .andExpect(status().isBadRequest())
                .andExpect(header().stringValues(HEADER_RESULT, REJECTED));
    }

    @Test
    @DisplayName("""
            Given a POST request with valid Repeatability headers
            When the request is performed
            Then a Created status response is returned with the ACCEPTED header value.
            """)
    void validMandatoryHeaders() throws Exception {
        this.sut.perform(getPreparedRequest()
                        .header(HEADER_REQUEST_ID, getRequestId())
                        .header(HEADER_FIRST_SENT, getFirstSend()))
                .andExpect(status().isCreated())
                .andExpect(header().stringValues(HEADER_RESULT, ACCEPTED));
    }

    private String getRequestId() {
        return UUID.randomUUID().toString();
    }

    private String getFirstSend() {
        return ZonedDateTime.now()
                .format(DateTimeFormatter.RFC_1123_DATE_TIME);
    }

    private MockHttpServletRequestBuilder getPreparedRequest() {
        return post("/products")
                .contentType(MediaType.APPLICATION_JSON)
                .content(objectMapper.writeValueAsString(getProductDto()));
    }

    private ProductDto getProductDto() {
        return new ProductDto(
                "TEST-42",
                "Product Name",
                "Category",
                new PriceDto(new BigDecimal("0.99"), "EUR"),
                "Description",
                null
        );
    }
}
