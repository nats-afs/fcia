package com.afs.nats.fciaapp.model

import groovy.transform.ToString
import sun.swing.StringUIClientPropertyKey

import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id
import javax.persistence.ManyToOne
import javax.persistence.Table
import javax.persistence.Temporal

@Entity
@Table(name = "FCIA_LOTS")
@ToString
class Lot {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id
    String name
    Integer stock
    String dueDate
//    @ManyToOne
//    Product product
}
