class TasksController < ApplicationController
  
  def index
    @tasks = Task.all
      respond_to do |format|
        format.html {render json: @tasks}
      end
  end

  def show
    @task = Task.find(params[:id])
    respond_to do |format|
      format.html {render json: @task}
    end
  end

  def create
    @task = Task.create(params[:task])
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes(params[:task])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy()
  end
end
