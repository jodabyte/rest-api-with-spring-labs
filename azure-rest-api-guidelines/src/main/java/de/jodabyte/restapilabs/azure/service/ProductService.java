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

}
