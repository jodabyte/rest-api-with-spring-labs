package de.jodabyte.restapilabs.azure.api;

import de.jodabyte.restapilabs.azure.api.dto.ProductDto;
import de.jodabyte.restapilabs.azure.api.dto.ProductMapper;
import de.jodabyte.restapilabs.azure.service.ProductService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/products")
public class ProductController extends BaseRestController {

    private final ProductService productService;
    private final ProductMapper productMapper;

    public ProductController(ProductService productService, ProductMapper productMapper) {
        this.productService = productService;
        this.productMapper = productMapper;
    }

    @GetMapping
    public List<ProductDto> getAllProducts() {
        return this.productMapper.map(this.productService.getProducts());
    }

    @GetMapping("/{reference}")
    public ProductDto getProductByReference(@PathVariable String reference) {
        return this.productMapper.map(this.productService.getProductByReference(reference));
    }

    @PostMapping
    public ResponseEntity<Void> createProduct(@RequestBody ProductDto dto) {
        var productReference = this.productService.createProduct(this.productMapper.map(dto));
        return getRepeatabilityResponse("getProductByReference", productReference);
    }
}
