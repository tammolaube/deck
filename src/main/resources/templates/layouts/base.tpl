yieldUnescaped '<!DOCTYPE html>'
html(lang:'en') {
    head {
        meta(charset:'utf-8')
        meta(name:'viewport', content:'width=device-width, initial-scale=1')
        meta('http-equiv':'x-ua-compatible', content:'ie=edge')

        /* Bootstrap CSS */
        link(rel:'stylesheet', href:'https://cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/css/bootstrap.css')
        link(rel:'stylesheet', href:'/css/main.css')

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

        /* jQuery first, then Bootstrap JS. */
        // in order to close/expand the empty script element with </script> append {} to script(...)
        script(src:'https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js') {}
        script(src:'https://cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/js/bootstrap.js') {}
    }
}
