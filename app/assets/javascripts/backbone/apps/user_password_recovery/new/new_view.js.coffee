@ClientApp.module "UserPasswordRecoveryApp.New", (New, App, Backbone, Marionette, $, _) ->

  class New.UserPasswordRecovery extends App.Views.ItemView
    template: "user_password_recovery/new/templates/new_user_password_recovery"
