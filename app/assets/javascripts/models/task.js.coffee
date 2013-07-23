class FirstTodo.Models.Task extends Backbone.Model
  defaults: ->
    title:'Default Title'
    done:false

  deleteTask: ->
    console.log "Hello"
