yieldUnescaped '''
<form novalidate name="newAboutMeForm">
  <div class="card">
    <div class="card-block">
      <fieldset class="form-group">
        <input ng-model="newAboutMe.name"
               placeholder="Name"
               class="form-control"/>
      </fieldset>
      <fieldset class="form-group">
        <input ng-model="newAboutMe.title"
               placeholder="Title"
               class="form-control"/>
      </fieldset>
      <fieldset class="form-group">
        <textarea ng-model="newAboutMe.body"
               placeholder="Body Text"
               rows="5"
               class="form-control"></textarea>
        </fieldset>
      <fieldset class="form-group">
        <input ng-model="newAboutMe.portrait"
               placeholder="Portrait"
               class="form-control"/>
      </fieldset>
      <fieldset class="form-group">
        <input ng-model="newAboutMe.banner"
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
             value="Create"
             class="btn btn-primary btn-block"
             ng-click="create()"
             ng-class="{ 'disabled': newAboutMeForm.$pristine }"/>
    </div>
  </div>
</form>
'''
