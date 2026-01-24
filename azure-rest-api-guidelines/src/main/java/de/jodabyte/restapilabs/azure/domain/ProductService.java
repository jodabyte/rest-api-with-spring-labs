package de.jodabyte.restapilabs.azure.domain;

import de.jodabyte.restapilabs.azure.domain.model.Product;
import de.jodabyte.restapilabs.azure.domain.repository.ProductRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

@Slf4j
@Service
public class ProductService {

    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public List<Product> getProducts() {
        return this.productRepository.findAll();
    }

    public Product getProductById(Long id) {
        return this.productRepository.findById(id).orElseThrow();
    }

    public Long createProduct(Product productToPersist) {
        Product persistedProduct = this.productRepository.save(productToPersist);
        return persistedProduct.getId();
    }

    public Product updateProduct(Long id, Product productToUpdate) {
        if (productToUpdate == null) {
            throw new IllegalArgumentException("Product cannot be null.");
        } else if (!Objects.equals(productToUpdate.getId(), id)) {
            throw new IllegalArgumentException("Product ID does not match the resource ID.");
        }

        return this.productRepository.save(productToUpdate);
    }

    public void deleteProduct(Long id) {
        if (id == null) {
            throw new IllegalArgumentException("Product ID cannot be null.");
        } else if (!this.productRepository.existsById(id)) {
            log.warn("Product with ID {} does not exist.", id);
            return;
        }

        this.productRepository.deleteById(id);
    }
}
