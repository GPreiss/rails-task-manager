class TasksController < ApplicationController

  before_action :find_task, only: [:show, :edit, :update, :destroy]


  def create
    Task.create(task_params)
    redirect_to tasks_path
  end

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
  end

  def edit

  end

  def update
    @task.update(task_params)
    redirect_to tasks_path


  end

  def destroy

    @task.destroy
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:name, :difficulty, :laziness)
  end

  def find_task
    @task = Task.find(params[:id])
  end

end
