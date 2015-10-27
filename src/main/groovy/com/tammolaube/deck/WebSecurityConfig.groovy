package com.tammolaube.deck

import org.springframework.security.web.csrf.CsrfFilter

import org.springframework.http.HttpMethod
import org.springframework.context.annotation.Configuration
import org.springframework.security.config.annotation.web.builders.HttpSecurity
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity
import org.springframework.security.web.csrf.CsrfTokenRepository
import org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository

import com.tammolaube.deck.filters.CsrfHeaderFilter

@Configuration
@EnableWebMvcSecurity
class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .httpBasic()
        .and()
            .authorizeRequests()
                .antMatchers(HttpMethod.GET, "/**").permitAll()
                .anyRequest().authenticated()
        .and()
            .csrf().csrfTokenRepository(csrfTokenRepository())
        .and()
            .addFilterAfter(new CsrfHeaderFilter(), CsrfFilter.class);
    }

    private CsrfTokenRepository csrfTokenRepository() {
        HttpSessionCsrfTokenRepository repository = new HttpSessionCsrfTokenRepository();
        repository.setHeaderName("X-XSRF-TOKEN");
        return repository;
    }

}
