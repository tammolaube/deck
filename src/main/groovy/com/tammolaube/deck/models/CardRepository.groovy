package com.tammolaube.deck.models

import org.springframework.data.repository.CrudRepository

interface CardRepository extends CrudRepository<Card, Integer> {}
