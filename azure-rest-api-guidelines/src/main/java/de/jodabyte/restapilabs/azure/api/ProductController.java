package de.jodabyte.restapilabs.azure.api;

import de.jodabyte.restapilabs.azure.api.dto.ProductCreateDto;
import de.jodabyte.restapilabs.azure.api.dto.ProductDto;
import de.jodabyte.restapilabs.azure.api.dto.ProductMapper;
import de.jodabyte.restapilabs.azure.api.repeatablerequest.PostRepeatable;
import de.jodabyte.restapilabs.azure.domain.ProductService;
import de.jodabyte.restapilabs.azure.domain.model.Product;
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
    public ResponseEntity<List<ProductDto>> getAllProducts() {
        List<ProductDto> dtoList = this.productMapper.map(this.productService.getProducts());
        return ResponseEntity.ok(dtoList);
    }

    @GetMapping("/{id}")
    public ResponseEntity<ProductDto> getProductByReference(@PathVariable Long id) {
        ProductDto dto = this.productMapper.map(this.productService.getProductById(id));
        return ResponseEntity.ok(dto);
    }

    @PostMapping
    @PostRepeatable
    public ResponseEntity<Void> createProduct(@RequestBody ProductCreateDto dto) {
        var productReference = this.productService.createProduct(this.productMapper.map(dto));
        return get201CreatedResponse("getProductByReference", productReference);
    }

    @PutMapping("/{id}")
    public ResponseEntity<ProductDto> updateProduct(@PathVariable Long id, @RequestBody ProductDto dto) {
        Product updatedProduct = this.productService.updateProduct(id, this.productMapper.map(dto));
        return ResponseEntity.ok(productMapper.map(updatedProduct));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteProduct(@PathVariable Long id) {
        this.productService.deleteProduct(id);
        return ResponseEntity.noContent().build();
    }
}
