class Admin::TasksController < ApplicationController
  def index
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to admin_task_url(@task)
    else
      render :new
    end
  end


  def show
    @task = Task.find(params[:id])
  end


  private
    def task_params
      params.require(:task).permit(:title, :content)
    end

end
