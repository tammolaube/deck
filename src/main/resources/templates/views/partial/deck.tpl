layout 'layouts/partial/twoColumn.tpl',
    leftColumn: contents {
        include template:'views/partial/aboutMe.tpl'
        div (class:'card {{ card.contextClass }}',
             'ng-repeat':'card in cards | filter:{side:true} | orderBy:\'-priority\'') {
            include template:'views/partial/cardInner.tpl'
        }
    },
    rightColumn: contents {
        div (class:'card {{ card.contextClass }}',
             'ng-repeat':'card in cards | filter:{side:false} | orderBy:[\'-priority\', \'dateCreated\']') {
            include template:'views/partial/cardInner.tpl'
        }
    }
