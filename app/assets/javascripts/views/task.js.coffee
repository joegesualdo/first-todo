class FirstTodo.Views.Task extends Backbone.View
  tagName: 'li'
  template: JST['tasks/task']
  events:
    'click .toggleDone': 'toggleDone'
    'click .deleteTask': 'deleteTask'

  initialize: ->
    if (@model.get('done') == true)
     $(@el).addClass('done')

  render: ->
    x = @.$el.append(@template(@model.toJSON()))
    console.log x
    this

  toggleDone: ->
    if @model.get('done') == false
      @model.set({done: true})
      @model.save()
      @.$el.addClass('done')
    else
      @model.set({done: false})
      @model.save()
      @.$el.removeClass('done')

  deleteTask: ->
    console.log "Being delted"
    @model.destroy()






