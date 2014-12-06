@ClientApp = do (Backbone, Marionette) ->

  App = new Marionette.Application

  App.rootRoute = "sign_in"

  App.on "before:start", (options) ->
    @currentUser = App.request "set:current:user", options.currentUser
    @environment = App.request "get:environment"

  App.addRegions
    mainRegion: "#main-layout"

  App.reqres.setHandler "get:current:user", ->
    App.currentUser

  App.addInitializer ->
    if @currentUser
      App.mainLayout = new App.Layouts.Unauthenticated
    else
      App.mainLayout = new App.Layouts.Authenticated

    App.mainRegion.show(App.mainLayout)

    # App.module("UserSessionsApp").start()

  App.on "start", (options) ->
    if Backbone.history
      Backbone.history.start()
      @navigate(@rootRoute, trigger: true) unless @currentUser.get("id")

  App
