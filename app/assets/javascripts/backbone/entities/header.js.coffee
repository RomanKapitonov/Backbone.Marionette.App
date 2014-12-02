@ClientApp.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.Header extends Entities.Model

  class Entities.HeaderCollection extends Entities.Collection
    model: Entities.Header

  API =
    getHeaders: ->
      new Entities.HeaderCollection [
        { name: "MenuEntry", url: "some_url" }
      ]

  App.reqres.setHandler "header:entities", ->
    API.getHeaders()