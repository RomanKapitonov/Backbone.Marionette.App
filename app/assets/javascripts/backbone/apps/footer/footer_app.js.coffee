@ClientApp.module "FooterApp", (FooterApp, App, Backbone, Marionette, $, _) ->
  API =
    showFooter: ->
     new FooterApp.Show.Controller

  FooterApp.on "start", ->
    API.showFooter()