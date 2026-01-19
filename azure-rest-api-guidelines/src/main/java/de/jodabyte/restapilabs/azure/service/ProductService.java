package de.jodabyte.restapilabs.azure.service;

import de.jodabyte.restapilabs.azure.service.model.Product;
import de.jodabyte.restapilabs.azure.service.repository.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public List<Product> getProducts() {
        return this.productRepository.findAll();
    }

    public Product getProductByReference(String reference) {
        return this.productRepository.findByReference(reference);
    }

    public String createProduct(Product productToPersist) {
        Product persistedProduct = this.productRepository.save(productToPersist);
        return persistedProduct.getReference();
    }
}
