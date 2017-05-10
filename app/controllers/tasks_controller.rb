class TasksController < ApplicationController
  def new
    @task = list.tasks.new
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