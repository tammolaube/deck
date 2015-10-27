package com.tammolaube.deck

import org.springframework.boot.SpringApplication
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.servlet.HandlerInterceptor
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry

@SpringBootApplication // same as @Configuration @EnableAutoConfiguration @ComponentScan
public class Application extends WebMvcConfigurerAdapter {

    @Autowired
    HandlerInterceptor environmentInterceptor

    public void addInterceptors(InterceptorRegistry registry) {
        super.addInterceptors registry

        registry.addInterceptor environmentInterceptor
    }

    public static void main(String[] args) {
        SpringApplication.run Application.class, args
    }

}
