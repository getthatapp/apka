class TasksController < ApplicationController
  def new
    @task = list.tasks.new
  end

  def create
    @task = list.tasks.new(task_params)
    if @task.save
      redirect_to list_path(list, @task)
    else
      render :new
    end
  end  

  private

  def task_params
    params.require(:task)permit(:title)
  end

  def list
    @list ||= List.find(params[:list_id])
  end

  def task
    @task ||= list.tasks.find(params[:id])
  end
end