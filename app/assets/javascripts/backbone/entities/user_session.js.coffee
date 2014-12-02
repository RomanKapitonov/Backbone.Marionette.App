@ClientApp.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.UserSession extends Entities.Model

  API =
    newUserSession: ->
      new Entities.UserSession

  App.reqres.setHandler "new:user_session:entity", ->
    API.newUserSession()

