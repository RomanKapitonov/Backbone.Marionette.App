@ClientApp.module "FooterApp.Show", (Show, App, Backbone, Marionette, $, _) ->

  class Show.Controller extends App.Controllers.Application

    initialize: ->
      footerView = @getFooterView()
      App.mainLayout.footerRegion.show footerView

    getFooterView: ->
      new Show.Footer