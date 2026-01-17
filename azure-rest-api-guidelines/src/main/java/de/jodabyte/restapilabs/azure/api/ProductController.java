package de.jodabyte.restapilabs.azure.api;

import de.jodabyte.restapilabs.azure.service.ProductService;
import de.jodabyte.restapilabs.azure.service.model.Product;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ProductController {

    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }
    
    @GetMapping("/products")
    public List<Product> getAllProducts() {
        return this.productService.getProducts();
    }

}
