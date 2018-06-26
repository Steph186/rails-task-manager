class TasksController < ApplicationController

  def index
    @tasks = Task.all()
  end

  def show
    tasks = Task.all()
    @task = tasks.find(params[:id])
  end

  def new
    @task = Task.new()
  end

  def create
    @task = Task.new(task_params)
    @task.save
    # no need for app/views/restaurants/create.html.erb
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def done
    @task = Task.find(params[:id])
    @task.completed = true
    @task.save
    redirect_to task_path(@task)
  end

  def delete
    task = Task.find(params[:id])
    task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :id)
  end
end
