package de.jodabyte.restapilabs.azure.service.repository;


import de.jodabyte.restapilabs.azure.service.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {

    Product findByReference(String reference);
}
