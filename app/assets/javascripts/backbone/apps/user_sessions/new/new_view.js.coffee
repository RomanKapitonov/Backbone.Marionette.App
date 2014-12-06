@ClientApp.module "UserSessionsApp.New", (New, App, Backbone, Marionette, $, _) ->

  class New.UserSession extends App.Views.ItemView
    template: "user_sessions/new/templates/new_user_session"
    className: "container-full"
