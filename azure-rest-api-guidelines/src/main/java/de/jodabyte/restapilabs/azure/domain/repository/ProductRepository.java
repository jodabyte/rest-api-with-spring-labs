package de.jodabyte.restapilabs.azure.domain.repository;


import de.jodabyte.restapilabs.azure.domain.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {

}
