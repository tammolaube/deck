yieldunescaped '''
<div ng-controller="AboutMeCtrl">
  <div class="card">
    <div class="card-block tl-img-crop">
      <img class="card-img-top img-responsive"
           alt="Card Background"
           src="{{ aboutMe.banner }}">
    </div>
    <div class="card-block text-center">
      <p>
        <img class="img-circle img-thumbnail img-responsive tl-img-protrait"
             alt="Picture of me"
             src="{{ aboutMe.portrait }}">
      </p>
      <h5 class="card-title">{{ aboutMe.name }}<br>
        <small class="text-muted">{{ aboutMe.title }}</small>
      </h5>
      <p class="card-text">
        {{ aboutMe.body }}
      </p>
    </div>
  </div>
</div>
'''
