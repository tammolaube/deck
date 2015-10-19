package com.tammolaube.site.controllers

import org.springframework.beans.factory.annotation.Autowired

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod
import org.springframework.web.bind.annotation.ResponseBody
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.PathVariable

import com.tammolaube.site.models.Card
import com.tammolaube.site.models.CardRepository

@RestController
@RequestMapping('/cards')
class CardController {

    @Autowired
    CardRepository cardRepository;

    @RequestMapping(method=RequestMethod.GET, produces='application/json')
    List<Card> cards() {
        cardRepository.findAll()
    }

    @RequestMapping(method=RequestMethod.POST, consumes='application/json')
    Card saveCard(@RequestBody Card card) {
        cardRepository.save(card)
    }

    @RequestMapping(value='/{id}', method=RequestMethod.DELETE)
    @ResponseBody def deleteCard(@PathVariable('id') Integer id) {
        cardRepository.delete(id)
    }
}
