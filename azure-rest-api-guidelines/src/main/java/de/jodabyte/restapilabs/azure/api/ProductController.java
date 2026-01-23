package de.jodabyte.restapilabs.azure.api;

import de.jodabyte.restapilabs.azure.api.dto.ProductDto;
import de.jodabyte.restapilabs.azure.api.dto.ProductMapper;
import de.jodabyte.restapilabs.azure.api.repeatablerequest.PostRepeatable;
import de.jodabyte.restapilabs.azure.domain.ProductService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * REST controller for managing products.
 */
@RestController
@RequestMapping("/products")
public class ProductController extends AbstractController {

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
    @PostRepeatable
    public ResponseEntity<Void> createProduct(@RequestBody ProductDto dto) {
        var productReference = this.productService.createProduct(this.productMapper.map(dto));
        return get201CreatedResponse("getProductByReference", productReference);
    }
}
