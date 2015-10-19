form (novalidate:'', name:"newCardForm") {
    div (class:'card') {
        div (class:'card-header') {
            input ('ng-model':'newCard.header',
                placeholder:'Header',
                class:'form-control')
        }
        div (class:'card-block') {
            input ('ng-model':'newCard.priority',
                placeholder:'Priority',
                class:'form-control')
            input ('ng-model':'newCard.contextClass',
                placeholder:'Context Class',
                class:'form-control')
            textarea ('ng-model':'newCard.body',
                'rows':'5',
                placeholder:'Body',
                class:'form-control') {}
        }
        div (class:'card-footer') {
            input ('ng-model':'newCard.footer',
                placeholder:'Footer',
                class:'form-control')
        }
        div (class:'card-footer') {
            input ('ng-click':'create()',
                type:'submit',
                class:'btn btn-primary btn-block',
                'ng-class':'{ \'disabled\': newCardForm.\$pristine }',
                value:'Create')
        }
    }
}
