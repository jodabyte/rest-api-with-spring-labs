package de.jodabyte.restapilabs.azure.http;

import de.jodabyte.restapilabs.azure.common.TestWithTestContainers;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.webmvc.test.autoconfigure.AutoConfigureMockMvc;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;

import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.UUID;

import static de.jodabyte.restapilabs.azure.api.repeatablerequest.RepeatabilityContract.*;
import static de.jodabyte.restapilabs.azure.common.ModelFactory.createPreparedRequest;
import static org.assertj.core.api.Assertions.assertThat;
import static org.hamcrest.Matchers.endsWith;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.header;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;


/**
 * Tests for HTTP POST idempotency using Repeatability headers.
 */
@AutoConfigureMockMvc
class CreateResourceIdempotencyTests extends TestWithTestContainers {

    @Autowired
    private MockMvc sut;

    @Test
    @DisplayName("""
            Given a POST request without the mandatory Repeatability headers
            When the request is performed
            Then a BadRequest status response is returned with the REJECTED header value.
            """)
    void missingMandatoryHeaders() throws Exception {
        this.sut.perform(createPreparedRequest("missingMandatoryHeaders"))
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
        String reference = "validMandatoryHeaders";
        this.sut.perform(createRepeatableRequest(reference))
                .andExpect(status().isCreated())
                .andExpect(header().string(HEADER_RESULT, ACCEPTED))
                .andExpect(header().string("Location", endsWith(reference)));
    }

    @Test
    @DisplayName("""
            Given a POST request with valid Repeatability headers
            When the same request is performed multiple times
            Then the same response is returned from cache with the ACCEPTED header value.
            """)
    void responsesAreCached() throws Exception {
        var request = createRepeatableRequest("responsesAreCached");

        String actual = this.sut.perform(request)
                .andExpect(status().isCreated())
                .andExpect(header().stringValues(HEADER_RESULT, ACCEPTED))
                .andReturn()
                .getResponse()
                .getHeader("Location");

        String expected = this.sut.perform(request)
                .andExpect(status().isCreated())
                .andExpect(header().stringValues(HEADER_RESULT, ACCEPTED))
                .andReturn()
                .getResponse()
                .getHeader("Location");

        assertThat(actual).isEqualTo(expected);
    }

    private MockHttpServletRequestBuilder createRepeatableRequest(String reference) {
        return createPreparedRequest(reference)
                .header(HEADER_REQUEST_ID, getRequestId())
                .header(HEADER_FIRST_SENT, getFirstSend());
    }

    private String getRequestId() {
        return UUID.randomUUID().toString();
    }

    private String getFirstSend() {
        return ZonedDateTime.now()
                .format(DateTimeFormatter.RFC_1123_DATE_TIME);
    }
}
