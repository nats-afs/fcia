package com.afs.nats.fciaapp

import com.afs.nats.fciaapp.model.Product
import com.afs.nats.fciaapp.repository.ProductRepository
import com.github.javafaker.Faker
import org.springframework.boot.CommandLineRunner
import org.springframework.boot.SpringApplication
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.context.annotation.Bean

@SpringBootApplication
class FciaAppApplication {

    static void main(String[] args) {
        SpringApplication.run FciaAppApplication, args
    }

    @Bean
    CommandLineRunner initData(ProductRepository productRepository) {
        { args ->
            def faker = new Faker()
            50.times { n ->
                productRepository.save(
                        new Product(
                                name: faker.commerce().productName(),
                                observation: faker.commerce().promotionCode(),
                                brand: faker.company().name())
                )
            }
        }
    }
}
