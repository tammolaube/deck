package com.tammolaube.site.models

import groovy.transform.EqualsAndHashCode

import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id
import javax.persistence.Lob
import javax.persistence.PreUpdate
import javax.persistence.PrePersist

@Entity
@EqualsAndHashCode(includes=['id'])
class Card {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    int id
    boolean side
    int priority
    String header
    @Lob
    String body
    String footer
    String contextClass
    Date lastModified
    Date dateCreated
    boolean hideDate

    String toString() { "Card: $id" }

    @PreUpdate
    @PrePersist
    public void updateTimeStamps() {
        lastModified = new Date();
        if (dateCreated==null) {
          dateCreated = new Date();
        }
    }

}
