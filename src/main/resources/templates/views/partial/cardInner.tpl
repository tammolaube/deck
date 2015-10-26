yieldUnescaped '''
<div class="card-header" ng-show="card.header">
  {{ card.header }}
</div>
<div class="card-block" ng-bind-html="converter.makeHtml(card.body)">
</div>
<div class="card-footer" ng-show="card.footer">
  {{ card.footer }}
</div>
<div class="card-footer text-right" ng-hide="card.footer || card.side ||
card.priority < 0">
<span class="text-muted">
  {{ card.lastModified | date }} |
  {{ card.dateCreated | date }}
</span>
</div>
'''
