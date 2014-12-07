@ClientApp.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.UserRegistration extends Entities.Model
    url: -> Routes.user_registration_path()
    paramRoot: "user"
    defaults:
      first_name: ""
      last_name: ""
      email: ""
      password: ""

  API =
    newUserRegistration: ->
      new Entities.UserRegistration

  App.reqres.setHandler "new:user_registration:entity", ->
    API.newUserRegistration()
