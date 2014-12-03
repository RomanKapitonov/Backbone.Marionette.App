@ClientApp = do (Backbone, Marionette) ->

  App = new Marionette.Application

  App.rootRoute = "sign_in"

  App.on "before:start", (options) ->
    @currentUser = App.request "set:current:user", options.currentUser

  App.addRegions
    headerRegion: "#main-region"
    mainRegion: "#main-region"
    footerRegion: "#footer-region"

  App.reqres.setHandler "get:current:user", ->
    App.currentUser

  App.addInitializer ->
    # App.module("UserSessionsApp").start()

  App.on "start", (options) ->
    if Backbone.history
      Backbone.history.start()
      @navigate(@rootRoute, trigger: true) unless @currentUser.get("id")

  App
