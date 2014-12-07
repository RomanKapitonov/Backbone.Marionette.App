@ClientApp.module "UserRegistrationsApp.New", (New, App, Backbone, Marionette, $, _) ->

  class New.UserRegistration extends App.Views.ItemView
    template: "user_registrations/new/templates/new_user_registration"
    id: "new-user-registration"
    events:
      "click input[type='submit']": "signUp"

    bindings:
      "input[name='first_name']": 'firstName'
      "input[name='last_name']": 'lastName'
      "input[name='email']": 'email'
      "input[name='password']": 'password'

    render: ->
      super()
      @stickit()

    signUp: ->
      @model.save @model.attributes,
        success: (model, response, options) ->
          debugger
        error: (model, response, options) ->
          debugger

