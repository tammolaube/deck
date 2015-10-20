package com.tammolaube.site.models

import groovy.transform.EqualsAndHashCode

import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id

@Entity
@EqualsAndHashCode(includes=['id'])
class AboutMe {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    int id
    boolean show
    String name
    String title
    String body
    String portrait
    String banner

    String toString() { "About me: $name $title" }

}
