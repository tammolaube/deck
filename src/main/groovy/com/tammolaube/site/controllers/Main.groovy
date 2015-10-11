package com.tammolaube.site.controllers

import org.springframework.web.bind.annotation.RestController
import org.springframework.web.bind.annotation.RequestMapping

@RestController
public class Main {

    @RequestMapping("/")
    String home() {
        "Hello World!"
    }

}
