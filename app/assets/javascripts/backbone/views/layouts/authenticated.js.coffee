@ClientApp.module "Layouts", (Layouts, App, Backbone, Marionette, $, _) ->

  class Layouts.Authenticated extends App.Views.Layout
    template: "layouts/templates/authenticated"