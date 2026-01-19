package de.jodabyte.restapilabs.azure.api.dto;

import java.math.BigDecimal;

public record PriceDto(BigDecimal value, String currency) {
}
