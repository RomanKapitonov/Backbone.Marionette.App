@ClientApp.module "UserRegistrationsApp", (UserRegistrationsApp, App, Backbone, Marionette, $, _) ->

  class UserRegistrationsApp.Router extends App.Routers.BaseRouter
    appRoutes:
      "sign_up" : "newUserRegistration"

  API =
    newUserRegistration: ->
      new UserRegistrationsApp.New.Controller

  App.commands.setHandler "new:user_session:entity", ->
    API.newUserRegistration

  App.addInitializer ->
    new UserRegistrationsApp.Router
      controller: API