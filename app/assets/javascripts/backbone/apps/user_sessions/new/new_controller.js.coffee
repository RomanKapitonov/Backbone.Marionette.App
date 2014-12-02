@ClientApp.module "UserSessionsApp.New", (New, App, Backbone, Marionette, $, _) ->

  New.Controller =
    newUserSession: ->
      user_session = App.request "new:user_session:entity"

      newView = @getNewView user_session
      App.mainRegion.show newView

    getNewView: (user_session) ->
      new New.UserSession
        model: user_session