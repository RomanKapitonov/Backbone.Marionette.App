@ClientApp = do (Backbone, Marionette) ->

  App = new Marionette.Application

  App.on "before:start", (options) ->
    @currentUser = App.request "set:current:user", options.currentUser

  App.reqres.setHandler "get:current:user", ->
    App.currentUser

  App.addRegions
    headerRegion: "#header-region"

  App.addInitializer ->
    App.module("HeaderApp").start()

  App.on "start", (options) ->
    if Backbone.history
      Backbone.history.start()

  App