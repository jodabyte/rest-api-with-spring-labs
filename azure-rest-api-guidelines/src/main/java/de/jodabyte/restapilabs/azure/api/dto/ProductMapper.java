package de.jodabyte.restapilabs.azure.api.dto;

import de.jodabyte.restapilabs.azure.domain.model.Price;
import de.jodabyte.restapilabs.azure.domain.model.Product;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;

@Mapper
public interface ProductMapper {

    List<ProductDto> map(List<Product> products);

    ProductDto map(Product product);

    Product map(ProductDto productDto);

    @Mapping(target = "id", ignore = true)
    Product map(ProductCreateDto dto);

    PriceDto map(Price price);

    Price map(PriceDto priceDto);
}
