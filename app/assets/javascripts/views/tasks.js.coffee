class FirstTodo.Views.Tasks extends Backbone.View
  tagName: 'ul'
  className: 'tasks'
  template: JST['tasks/tasks']
  render: ->
    $('#container').append(@el)
    for task in @collection.models
      console.log "The model being passed in is:", task
      view = new FirstTodo.Views.Task({model: task})
      @$el.append(view.render().el)
    this