@ClientApp.module "UserRegistrationsApp.New", (New, App, Backbone, Marionette, $, _) ->

  class New.UserRegistration extends App.Views.ItemView
    template: "user_registrations/new/templates/new_user_registration"
    id: "new-user-registration"
    events:
      "click input[type='submit']": "signUp"

    bindings:
      '#first_name': 'firtst_name'
      '#last_name': 'last_name'
      '#email': 'email'
      '#password': 'password'

    render: ->
      super()
      @stickit()

    signUp: (event) ->
      event.preventDefault()

      @model.save @model.attributes,
        success: (model, response, options) ->
          App.request("set:current:user", new @ClientApp.Entities.User(response))
        error: (model, response, options) ->
          debugger