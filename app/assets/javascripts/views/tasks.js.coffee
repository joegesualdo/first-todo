class FirstTodo.Views.Tasks extends Backbone.View
  className: 'tasksView'
  template: JST['tasks/tasks']
  events:
    'click #submitTask': 'createTask'
  initialize: ->
    $('.container-fluid').append(@template())

    @collection.on('remove', @render, this)
    @collection.on('add', @render, this)

    $('#submitTask').on('click', @createTask)
    $('#newTask').on('keypress', @saveOnEnter)
  render: ->
    $('.taskList').empty()
    for task in @collection.models
        console.log "The model being passed in is:", task
        view = new FirstTodo.Views.Task({model: task})
        $(".taskList").append(view.render().el)
    this

  createTask: (e) =>
    console.log("hello")
    e.preventDefault()
    task = $('#newTask').val()
    @collection.create({title: task})
    $('#newTask').val('')

  saveOnEnter: (event) =>
    if event.keyCode == 13
      task = $('#newTask').val()
      @collection.create({title: task})
      $('#newTask').val('')

