class FirstTodo.Views.Task extends Backbone.View
  tagName: 'li'
  template: JST['tasks/task']
  render: ->
    @.$el.append(@template(@model.toJSON()))
    this
