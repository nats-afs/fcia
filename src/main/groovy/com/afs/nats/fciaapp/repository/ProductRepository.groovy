package com.afs.nats.fciaapp.repository

import com.afs.nats.fciaapp.model.Product
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface ProductRepository extends JpaRepository<Product, Long> {

}