class FirstTodo.Routers.Main extends Backbone.Router
  routes:
    '': 'home'

  home: ->
    tasks = new FirstTodo.Collections.Tasks
    tasks.fetch({
      success: ->
        console.log tasks
        view = new FirstTodo.Views.Tasks({collection: tasks})
        view.render()
    })