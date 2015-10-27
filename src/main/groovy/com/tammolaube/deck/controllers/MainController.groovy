package com.tammolaube.deck.controllers

import org.springframework.stereotype.Controller
import org.springframework.beans.factory.annotation.Value
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.servlet.ModelAndView

@Controller
public class MainController {

    @Value('${com.tammolaube.deck.title}')
    String title

    @RequestMapping("/")
    def home() {
        new ModelAndView("views/ngBase", [ title:title ])
    }

    @RequestMapping("/partials/{view}")
    def partialView(@PathVariable String view) {
        "views/partial/$view"
    }

}
