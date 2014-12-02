@ClientApp.module "UserSessionsApp", (UserSessionsApp, App, Backbone, Marionette, $, _) ->

  class UserSessionsApp.Router extends Marionette.AppRouter
    appRoutes:
      "sign_in" : "newUserSession"

  API =
    newUserSession: ->
      UserSessionsApp.New.Controller.newUserSession()

  App.commands.setHandler "new:user_session:entity", ->
    API.newUserSession

  App.addInitializer ->
    new UserSessionsApp.Router
      controller: API