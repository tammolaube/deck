<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
  </head>
  <body>

    <div class="container">
      <g:layoutBody/>
    </div>

    <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>

    <asset:javascript src="application.js"/>
  </body>
</html>
