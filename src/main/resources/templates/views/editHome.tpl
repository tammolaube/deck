layout 'layouts/twoColumn.tpl', true,
    title: 'Tammo Laube Home',
    leftColumn: contents {
        div ('ng-controller':'AboutMeFormCtrl') {
            div (class:'text-center text-muted', 'ng-show':'aboutMes.length') {
                h6 'Edit AboutMes:'
            }
            include template:'partials/editAboutMes.tpl'
            div (class:'text-center text-muted') {
                h6 'Create New AboutMe:'
            }
            include template:'partials/createAboutMe.tpl'
        }
        div ('ng-controller':'CardFormCtrl') {
            div (class:'text-center text-muted', 'ng-show':'cards.length') {
                h6 'Edit Cards:'
            }
            include template:'partials/editCards.tpl'
            div (class:'text-center text-muted') {
                h6 'Create New Card:'
            }
            include template:'partials/createCard.tpl'
        }
    },
    rightColumn: contents {
    }
