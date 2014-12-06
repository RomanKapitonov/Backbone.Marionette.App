@ClientApp.module "UserPasswordRecoveryApp.New", (New, App, Backbone, Marionette, $, _) ->

  class New.Controller extends App.Controllers.Application
    initialize: ->
      user_password_recovery = App.request "new:user_password_recovery:entity"

      newView = @getNewView user_password_recovery
      App.mainRegion.show newView

    getNewView: (user_password_recovery) ->
      new New.UserPasswordRecovery
        model: user_password_recovery