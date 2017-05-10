class TasksController < ApplicationController
  def new
    @task = list.tasks.new
  end  
end