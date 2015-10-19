package com.tammolaube.site.controllers

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.servlet.ModelAndView

@Controller
public class MainController {

    @RequestMapping("/")
    def homeView() {
        "views/home"
    }

    @RequestMapping("/edit")
    def editHomeView() {
        "views/editHome"
    }

    @RequestMapping("/partials/cardList")
    def cardListPartial() {
        "partials/cardList"
    }

}
