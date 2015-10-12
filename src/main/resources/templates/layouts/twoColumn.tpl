layout 'layouts/base.tpl',
    title: title,
    container: contents {
        div(class:'row') {
            div(class:'col-lg-4 col-md-5 col-sm-12') {
                leftColumn()
            }
            div(class:'col-lg-8 col-md-7 col-sm-12') {
                rightColumn()
            }
        }
    }
