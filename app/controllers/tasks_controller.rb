class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task_id = Task.find(params[:id])
  end
end
