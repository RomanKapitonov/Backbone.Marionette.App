@ClientApp.module "UserPasswordRecoveryApp", (UserPasswordRecoveryApp, App, Backbone, Marionette, $, _) ->

  class UserPasswordRecoveryApp.Router extends App.Routers.BaseRouter
    appRoutes:
      "recover" : "newUserPasswordRecovery"

  API =
    newUserPasswordRecovery: ->
      new UserPasswordRecoveryApp.New.Controller

  App.commands.setHandler "new:user_password_recovery:entity", ->
    API.newUserPasswordRecovery()

  App.addInitializer ->
    new UserPasswordRecoveryApp.Router
      controller: API