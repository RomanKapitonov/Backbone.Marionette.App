@ClientApp.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.UserRegistration extends Entities.Model

  API =
    newUserRegistration: ->
      new Entities.UserRegistration

  App.reqres.setHandler "new:user_registration:entity", ->
    API.newUserRegistration()