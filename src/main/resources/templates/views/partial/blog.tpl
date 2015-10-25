layout 'layouts/partial/twoColumn.tpl',
    leftColumn: contents {
        include template:'views/partial/aboutMe.tpl'
        include template:'views/partial/cardList.tpl'
    },
    rightColumn: contents {
        div (class:'alert alert-info') {
            p 'Coming soon.'
        }
    }
