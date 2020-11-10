class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @new_task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
    @task_edit = Task.find(params[:id])
  end

  def update
    @task_updated = Task.find(params[:id])
    @task_updated.update(task_params)

    redirect_to task_path(@task_updated)
  end

  def show
    @task = Task.find(params[:id])
  end

  def destroy
    @task_destroy = Task.find(params[:id])
    @task_destroy.destroy

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
