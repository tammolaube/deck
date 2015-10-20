package com.tammolaube.site.controllers

import org.springframework.beans.factory.annotation.Autowired

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod
import org.springframework.web.bind.annotation.ResponseBody
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.PathVariable

import com.tammolaube.site.models.AboutMe
import com.tammolaube.site.models.AboutMeRepository

@RestController
@RequestMapping('/aboutme')
class AboutMeController {

    @Autowired
    AboutMeRepository aboutMeRepository;

    @RequestMapping(method=RequestMethod.GET, produces='application/json')
    AboutMe aboutMe() {
        aboutMeRepository.findOneByShow(true)
    }

    @RequestMapping(value="/all", method=RequestMethod.GET,
                        produces='application/json')
    List<AboutMe> aboutMeAll() {
        aboutMeRepository.findAll()
    }

    @RequestMapping(method=RequestMethod.POST, consumes='application/json')
    AboutMe saveAboutMe(@RequestBody AboutMe aboutMe) {
        aboutMeRepository.save(aboutMe)
    }

    @RequestMapping(value='/{id}', method=RequestMethod.DELETE)
    @ResponseBody def deleteAboutMe(@PathVariable('id') Integer id) {
        aboutMeRepository.delete(id)
    }
}
