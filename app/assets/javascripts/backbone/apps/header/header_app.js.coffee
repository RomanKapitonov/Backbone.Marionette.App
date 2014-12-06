@ClientApp.module "HeaderApp", (HeaderApp, App, Backbone, Marionette, $, _) ->
  API =
    listHeader: ->
     new HeaderApp.List.Controller

  HeaderApp.on "start", ->
    API.listHeader()