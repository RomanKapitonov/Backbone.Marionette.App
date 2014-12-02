Backbone.Marionette.Renderer.render = (template, data) ->
  templateFunc = JST["backbone/apps/" + template]
  unless templateFunc
    throw new Marionette.Error
      name: 'TemplateNotFoundError'
      message: 'Cannot render the template since its false, null or undefined.'

  templateFunc(data)