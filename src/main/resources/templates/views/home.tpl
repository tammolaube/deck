layout 'layouts/twoColumn.tpl',
    title: 'Tammo Laube Home',
    leftColumn: contents {
        div (class:'card') {
            div (class:'card-block tl-img-crop') {
                img class:'card-img-top img-responsive',
                    alt:'Card Background',
//                    src:'http://instagram.com/p/67nWW_N9a-/media/?size=l'
                    src:'http://instagram.com/p/6Djht4N9dN/media/?size=l'
            }
            div (class:'card-block text-center') {
                p {
                    img class:'''img-circle img-thumbnail img-responsive
                                 tl-img-profile''',
                                 alt:'Picture of me',
                                 src:'http://instagram.com/p/jirvdet9Y0/media/?size=l'
                }
                h5 (class:'card-title') { 
                    yield 'Tammo Laube'
                    br()
                    small class:'text-muted', 'Web App Developer'
                }
                p (class:'card-text') {
                    yield '''I'm a freelance developer based in Frankfurt/Main,
                    Germany, specialising in building web apps with AngularJS in the
                    front and Django or Spring Boot in the backend.'''
                }
            }
        }
    },
    rightColumn: contents {
    }
