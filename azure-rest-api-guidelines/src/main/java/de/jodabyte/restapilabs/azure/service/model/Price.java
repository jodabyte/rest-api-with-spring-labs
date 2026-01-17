package de.jodabyte.restapilabs.azure.service.model;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;

@Embeddable
@Setter
@Getter
public class Price {

    @Column(name = "price_value", nullable = false)
    private BigDecimal value;

    @Column(name = "price_currency", nullable = false)
    private String currency;
    
}
