yieldUnescaped '''
<div class="card" ng-repeat="card in cards | orderBy:'-priority'">
  <form novalidate name="card{{ card.id }}">
    <div class="card-header">
      <input ng-model="card.header" class="form-control" placeholder="Header"/>
    </div>
    <div class="card-block">
      <input ng-model="card.priority"
             class="form-control"
             placeholder="Priority"/>
      <input ng-model="card.contextClass"
             class="form-control"
             placeholder="Context Class"/>
      <textarea ng-model="card.body" class="form-control" rows="5"></textarea>
    </div>
    <div class="card-footer">
      <input ng-model="card.footer" class="form-control" placeholder="Footer"/>
    </div>
  <div class="card-footer">
    <input type="submit"
           ng-click="save(card)"
           class="btn btn-primary"
           ng-class="{ 'disabled': card{{card.id}}.$pristine }"
           value="Update">
    </input>
    <span class="text-warning" ng-show="card{{card.id}}.$dirty">
      Unsaved
    </span>
    <button ng-click="delete(card)" class="btn btn-danger pull-right">
      Delete
    </button>
  </div>
  </form>
</div>
'''
