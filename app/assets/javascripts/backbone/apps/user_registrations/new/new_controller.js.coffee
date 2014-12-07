@ClientApp.module "UserRegistrationsApp.New", (New, App, Backbone, Marionette, $, _) ->

  class New.Controller extends App.Controllers.Application
    initialize: ->
      @currentUser = App.request "set:current:user"

      user_registration = App.request "new:user_registration:entity"

      newView = @getNewView user_registration
      App.mainLayout.mainRegion.show newView

    getNewView: (user_registration) ->
      new New.UserRegistration
        model: user_registration