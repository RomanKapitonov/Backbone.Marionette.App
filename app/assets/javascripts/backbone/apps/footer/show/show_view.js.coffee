@ClientApp.module "FooterApp.Show", (Show, App, Backbone, Marionette, $, _) ->

  class Show.Footer extends App.Views.ItemView
    template: "footer/show/templates/footer"
    className: "footer-content"
