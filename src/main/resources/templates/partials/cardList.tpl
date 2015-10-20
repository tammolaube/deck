yieldUnescaped '''
<div ng-controller="CardListCtrl">
  <div class="card {{ card.contextClass }}"
       ng-repeat="card in cards | orderBy:'-priority'">
    <div class="card-header" ng-show="card.header">
      {{ card.header }}
    </div>
    <div class="card-block" ng-bind-html="converter.makeHtml(card.body)">
    </div>
    <div class="card-footer" ng-show="card.footer">
      {{ card.footer }}
    </div>
  </div>
</div>
'''
