package de.jodabyte.restapilabs.azure.domain.model;

import jakarta.persistence.*;
import lombok.Data;

import java.util.HashSet;
import java.util.Set;

@Entity
@Data
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = true)
    private String reference;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String category;

    private Price price;

    private String description;

    @ElementCollection
    private Set<String> keywords = new HashSet<>();

}
