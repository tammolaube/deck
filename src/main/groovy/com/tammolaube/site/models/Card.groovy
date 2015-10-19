package com.tammolaube.site.models

import groovy.transform.EqualsAndHashCode

import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id

@Entity
@EqualsAndHashCode(includes=['id'])
class Card {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    int id
    int index
    String title
    String body
    String footer
    String contextClass

    String toString() { "$index:$title/$id" }

}
