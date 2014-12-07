@ClientApp.module "UserRegistrationsApp.New", (New, App, Backbone, Marionette, $, _) ->

  class New.UserRegistration extends App.Views.ItemView
    template: "user_registrations/new/templates/new_user_registration"
    id: "new-user-registration"
    events:
      "click input[type='submit']": "signUp"

    initialize: ->
      super()
      @modelBinder = new Backbone.ModelBinder

    render: ->
      super()
      @modelBinder.bind(@model, @el)

    signUp: (event) ->
      event.preventDefault()

      @model.save @model.attributes,
        success: (model, response, options) ->
          App.request("set:current:user", new @ClientApp.Entities.User(response))
        error: (model, response, options) ->
          debugger