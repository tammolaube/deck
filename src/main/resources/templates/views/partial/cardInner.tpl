yieldUnescaped '''
<div class="card-header" ng-show="card.header">
  {{ card.header }}
</div>
<div class="card-block" ng-bind-html="converter.makeHtml(card.body)">
</div>
<div class="card-footer" ng-show="card.footer && card.hideDate">
  {{ card.footer }}
</div>
<div class="card-footer" ng-hide="card.hideDate">
  {{ card.footer }} &nbsp;
  <span class="text-muted pull-right">
    {{ card.dateCreated | date }}
  </span>
</div>
'''
