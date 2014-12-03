@ClientApp.module "UserRegistrationsApp", (UserRegistrationsApp, App, Backbone, Marionette, $, _) ->

  class UserRegistrationsApp.Router extends Marionette.AppRouter
    appRoutes:
      "sign_up" : "newUserRegistration"

  API =
    newUserRegistration: ->
      UserRegistrationsApp.New.Controller.newUserRegistration()
    singUp: ->
      UserRegistrationsApp.New.Controller.signUp()

  App.commands.setHandler "new:user_session:entity", ->
    API.newUserRegistration

  App.addInitializer ->
    new UserRegistrationsApp.Router
      controller: API