yieldUnescaped '''
<div class="card" ng-repeat="aboutMe in aboutMes | orderBy:'show'">
  <form novalidate name="aboutMe{{ aboutMe.id }}">
    <div class="card-block">
      <fieldset class="form-group">
        <input ng-model="aboutMe.name"
               placeholder="Name"
               class="form-control"/>
      </fieldset>
      <fieldset class="form-group">
        <input ng-model="aboutMe.title"
               placeholder="Title"
               class="form-control"/>
      </fieldset>
      <fieldset class="form-group">
        <textarea ng-model="aboutMe.body"
               placeholder="Body Text"
               rows="5"
               class="form-control"></textarea>
        </fieldset>
      <fieldset class="form-group">
        <input ng-model="aboutMe.profile"
               placeholder="Profile Picture"
               class="form-control"/>
      </fieldset>
      <fieldset class="form-group">
        <input ng-model="aboutMe.banner"
               placeholder="Banner Picture"
               class="form-control"/>
      </fieldset>
      <div class="checkbox">
        <label>
          <input ng-model="aboutMe.show" type="checkbox"/> Show
        </label>
      </div>
    </div>
    <div class="card-footer">
      <input type="submit"
             value="Update"
             class="btn btn-primary"
             ng-click="save(aboutMe)"
             ng-class="{ \'disabled\': aboutMe{{ aboutMe.id }}.$pristine }">
      <button ng-click="delete(aboutMe)" class="btn btn-danger">
        Delete
      </button>
      <small class="text-warning" ng-show="aboutMe{{ aboutMe.id }}.$dirty">
        Unsaved!
      </small>
    </div>
  </form>
</div>
'''
