@ClientApp.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.User extends Entities.Model

  API =
    setCurrentUser: (currentUser) ->
      new Entities.User currentUser
    newUser: ->
      new Entities.User

  App.reqres.setHandler "set:current:user", (currentUser) ->
    API.setCurrentUser currentUser

  App.reqres.setHandler "new:user:entity", ->
    API.newUser()

