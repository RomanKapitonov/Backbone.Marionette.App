@ClientApp.module "HeaderApp.List", (List, App, Backbone, Marionette, $, _) ->

  class List.Controller extends App.Controllers.Application

    initialize: ->
      links = App.request "header:entities"

      headerView = @getHeaderView links
      App.mainLayout.headerRegion.show headerView

    getHeaderView: (links) ->
      new List.Headers
        collection: links