package com.tammolaube.site.models

import org.springframework.data.repository.CrudRepository

interface AboutMeRepository extends CrudRepository<AboutMe, Integer> {
    
    AboutMe findOneByShow(boolean show);

}
