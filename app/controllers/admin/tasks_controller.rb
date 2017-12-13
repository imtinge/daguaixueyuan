class Admin::TasksController < ApplicationController
  def index
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to admin_task_url(@task), notice: "任务创建成功！"
    else
      render :new
    end
  end


  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to [:admin, @task], notice: "任务修改成功！"
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to admin_tasks_url, notice: '成功删除任务.'
  end

  private
    def task_params
      params.require(:task).permit(:title, :content)
    end

end
