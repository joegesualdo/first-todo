window.FirstTodo =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    console.log 'Hello from Backbone!'
    new FirstTodo.Routers.Main
    Backbone.history.start()

$(document).ready ->
  FirstTodo.initialize()
