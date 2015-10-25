layout 'layouts/partial/twoColumn.tpl', true,
    leftColumn: contents {
        div ('ng-controller':'AboutMeFormCtrl') {
            div (class:'text-muted', 'ng-show':'aboutMes.length') {
                h5 'Edit AboutMes:'
            }
            include template:'views/partial/editAboutMes.tpl'
            div (class:'text-muted') {
                h5 'Create New AboutMe:'
            }
            include template:'views/partial/createAboutMe.tpl'
        }
    },
    rightColumn: contents {
        div ('ng-controller':'CardFormCtrl') {
            div (class:'text-muted') {
                h5 'Create New Card:'
            }
            include template:'views/partial/createCard.tpl'
            div (class:'text-muted', 'ng-show':'cards.length') {
                h5 'Edit Cards:'
            }
            include template:'views/partial/editCards.tpl'
        }
    }
