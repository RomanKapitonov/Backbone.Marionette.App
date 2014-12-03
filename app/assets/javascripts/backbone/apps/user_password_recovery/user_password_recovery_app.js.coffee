@ClientApp.module "UserPasswordRecoveryApp", (UserPasswordRecoveryApp, App, Backbone, Marionette, $, _) ->

  class UserPasswordRecoveryApp.Router extends Marionette.AppRouter
    appRoutes:
      "recover" : "newUserPasswordRecovery"

  API =
    newUserPasswordRecovery: ->
      UserPasswordRecoveryApp.New.Controller.newUserPasswordRecovery()

  App.commands.setHandler "new:user_password_recovery:entity", ->
    API.newUserPasswordRecovery

  App.addInitializer ->
    new UserPasswordRecoveryApp.Router
      controller: API