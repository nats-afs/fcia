package com.afs.nats.fciaapp.model

import groovy.transform.ToString

import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id
import javax.persistence.OneToMany
import javax.persistence.Table

@ToString
@Entity
@Table(name="FCIA_PRODUCTS")
class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id
    String name
    String observation
    String brand
//    @OneToMany(mappedBy = "product")
//    Set<Lot> lots
}
