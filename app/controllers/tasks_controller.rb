class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
  @task = Task.find(params[:id])
  end

  def destroy
  Task.find(params[:id]).destroy
  redirect_to tasks_path
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(tasks_params)
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def create
    @task = Task.new(tasks_params)

    if @task.save
      redirect_to tasks_path
    else
      render :new
  end
end

private

  def tasks_params
    params.require(:task).permit(:action, :description, :priority)
  end
end
