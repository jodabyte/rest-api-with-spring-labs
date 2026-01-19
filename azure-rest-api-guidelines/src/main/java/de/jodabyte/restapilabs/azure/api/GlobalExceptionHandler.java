package de.jodabyte.restapilabs.azure.api;

import de.jodabyte.restapilabs.azure.api.repeatablerequest.IllegalRepeatabilityHeadersException;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import static de.jodabyte.restapilabs.azure.api.repeatablerequest.RepeatabilityContract.HEADER_RESULT;
import static de.jodabyte.restapilabs.azure.api.repeatablerequest.RepeatabilityContract.REJECTED;

@ControllerAdvice
public class GlobalExceptionHandler extends ResponseEntityExceptionHandler {

    @ExceptionHandler(IllegalRepeatabilityHeadersException.class)
    public ResponseEntity<Object> handleIllegalRepeatabilityHeadersException(
            IllegalRepeatabilityHeadersException ex,
            WebRequest request
    ) {
        HttpHeaders headers = new HttpHeaders();
        headers.add(HEADER_RESULT, REJECTED);
        return handleExceptionInternal(ex, null, headers, HttpStatus.BAD_REQUEST, request);
    }
}
