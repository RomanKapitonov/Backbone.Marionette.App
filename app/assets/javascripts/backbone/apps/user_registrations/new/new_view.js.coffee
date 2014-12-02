@ClientApp.module "UserRegistrationsApp.New", (New, App, Backbone, Marionette, $, _) ->

  class New.UserRegistration extends App.Views.ItemView
    template: "user_registrations/new/templates/new_user_registration"
