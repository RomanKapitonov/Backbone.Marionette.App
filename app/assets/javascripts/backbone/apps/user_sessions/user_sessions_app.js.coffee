@ClientApp.module "UserSessionsApp", (UserSessionsApp, App, Backbone, Marionette, $, _) ->

  class UserSessionsApp.Router extends App.Routers.BaseRouter
    appRoutes:
      "sign_in" : "newUserSession"

  API =
    newUserSession: ->
      new UserSessionsApp.New.Controller

  App.commands.setHandler "new:user_session:entity", ->
    API.newUserSession()

  App.addInitializer ->
    new UserSessionsApp.Router
      controller: API