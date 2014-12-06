@ClientApp.module "Layouts", (Layouts, App, Backbone, Marionette, $, _) ->

  class Layouts.Unauthenticated extends App.Views.Layout
    template: "layouts/templates/unauthenticated"
    className: "main-region-container unauthenticated-container"

    regions:
      mainRegion: "#main-region"