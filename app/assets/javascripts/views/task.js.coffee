class FirstTodo.Views.Task extends Backbone.View
  tagName: 'li'
  template: JST['tasks/task']
  render: ->
    x = @.$el.append(@template(@model.toJSON()))
    console.log x
    this
