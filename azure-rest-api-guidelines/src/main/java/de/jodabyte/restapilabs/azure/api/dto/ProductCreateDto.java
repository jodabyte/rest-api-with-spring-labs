package de.jodabyte.restapilabs.azure.api.dto;

import java.util.Set;

public record ProductCreateDto(String name,
                               String category,
                               PriceDto price,
                               String description,
                               Set<String> keywords) {
}
