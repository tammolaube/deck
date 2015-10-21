yieldUnescaped '<!DOCTYPE html>'
html(lang:'en', 'ng-app':'tammolaube', 'ng-cloak':'', class='ng-cloak') {
    head {
        meta(charset:'utf-8')
        meta(name:'viewport', content:'width=device-width, initial-scale=1')
        meta('http-equiv':'x-ua-compatible', content:'ie=edge')

        link(rel:'stylesheet', href:'/css/bundle.css')

        /* other templates that use base.tpl
           as layout can set title */
        title(title)
    }
    body {
        div (class:'container') {
            /* other templates that use base.tpl
               as layout can set container() */
            container()
        }

        script(src:'/js/bundle.js') {}

        /* implemented activeProfiles with a interceptor albeit not necessary */
        if (dev) script(src:'//localhost:9091/') {}
    }
}
