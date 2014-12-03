@ClientApp.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.UserPasswordRecovery extends Entities.Model

  API =
    newUserPasswordRecovery: ->
      new Entities.UserPasswordRecovery

  App.reqres.setHandler "new:user_password_recovery:entity", ->
    API.newUserPasswordRecovery()