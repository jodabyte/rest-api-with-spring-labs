package de.jodabyte.restapilabs.azure.api.dto;

import de.jodabyte.restapilabs.azure.service.model.Price;
import de.jodabyte.restapilabs.azure.service.model.Product;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;

@Mapper
public interface ProductMapper {

    List<ProductDto> map(List<Product> products);

    ProductDto map(Product product);

    @Mapping(target = "id", ignore = true)
    Product map(ProductDto productDto);

    PriceDto map(Price price);

    Price map(PriceDto priceDto);
}
