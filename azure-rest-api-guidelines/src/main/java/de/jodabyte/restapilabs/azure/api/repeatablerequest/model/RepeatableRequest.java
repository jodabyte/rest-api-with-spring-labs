package de.jodabyte.restapilabs.azure.api.repeatablerequest.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Data
public class RepeatableRequest {

    @Id
    private UUID id;

    private LocalDateTime createdAt;
}
