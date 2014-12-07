@ClientApp.module "UserSessionsApp.New", (New, App, Backbone, Marionette, $, _) ->

  class New.Controller extends App.Controllers.Application
    initialize: ->
      user_session = App.request "new:user_session:entity"

      newView = @getNewView user_session

      App.mainLayout.mainRegion.show(newView)

    getNewView: (user_session) ->
      new New.UserSession
        model: user_session