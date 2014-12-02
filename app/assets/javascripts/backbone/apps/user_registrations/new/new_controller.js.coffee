@ClientApp.module "UserRegistrationsApp.New", (New, App, Backbone, Marionette, $, _) ->

  New.Controller =
    newUserRegistration: ->
      user_registration = App.request "new:user_registration:entity"

      newView = @getNewView user_registration
      App.mainRegion.show newView

    getNewView: (user_registration) ->
      new New.UserRegistration
        model: user_registration