layout 'layouts/partial/twoColumn.tpl', true,
    leftColumn: contents {
        div ('ng-controller':'AboutMeFormCtrl') {
            div (class:'text-center text-muted', 'ng-show':'aboutMes.length') {
                h6 'Edit AboutMes:'
            }
            include template:'views/partial/editAboutMes.tpl'
            div (class:'text-center text-muted') {
                h6 'Create New AboutMe:'
            }
            include template:'views/partial/createAboutMe.tpl'
        }
        div ('ng-controller':'CardFormCtrl') {
            div (class:'text-center text-muted', 'ng-show':'cards.length') {
                h6 'Edit Cards:'
            }
            include template:'views/partial/editCards.tpl'
            div (class:'text-center text-muted') {
                h6 'Create New Card:'
            }
            include template:'views/partial/createCard.tpl'
        }
    },
    rightColumn: contents {
    }
