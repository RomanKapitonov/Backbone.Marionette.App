@ClientApp.module "HeaderApp.List", (List, App, Backbone, Marionette, $, _) ->

  class List.Header extends App.Views.ItemView
    template: "backbone/apps/header/list/templates/_header"
    tagName: "li"

  class List.Headers extends App.Views.CompositeView
    template: "backbone/apps/header/list/templates/headers"
    itemView: List.Header
    itemViewContainer: "ul"