package com.tammolaube.site.controllers

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.servlet.ModelAndView

@Controller
public class MainController {

    @RequestMapping("/")
    def home() {
        new ModelAndView("views/ngBase", [ title:"Home" ])
    }

    @RequestMapping("/partials/{view}")
    def partialView(@PathVariable String view) {
        "views/partial/$view"
    }

}
