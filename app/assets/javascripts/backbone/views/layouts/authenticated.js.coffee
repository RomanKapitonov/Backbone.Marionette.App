@ClientApp.module "Layouts", (Layouts, App, Backbone, Marionette, $, _) ->

  class Layouts.Authenticated extends App.Views.Layout
    template: "layouts/templates/authenticated"
    className: "authenticated"

    regions:
      headerRegion: "#header-region"
      sidebarRegion: "#sidebar-region"
      contentRegion: "#content-region"
      footerRegion: "#footer-region"

    onRender: ->
      App.module("HeaderApp").start()
      # App.module("FooterApp").start()