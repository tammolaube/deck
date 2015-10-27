package com.tammolaube.deck.interceptors

import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

import org.springframework.core.env.Environment
import org.springframework.beans.factory.annotation.Value
import org.springframework.stereotype.Component;
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter
import org.springframework.web.servlet.ModelAndView

@Component
public class EnvironmentInterceptor extends HandlerInterceptorAdapter {

    @Value('${com.tammolaube.deck.development}')
    final String development

    @Autowired
    private Environment env

    public void postHandle(HttpServletRequest request,
        HttpServletResponse response,
        Object handler,
        ModelAndView modelAndView) throws Exception {

        if (modelAndView && this.development in env.getActiveProfiles())
            modelAndView.addObject("dev", true);
    }
}
