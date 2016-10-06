class TodoTasksController < ApplicationController
  before_action :declare_todo_group
  before_action :declare_todo_task, except: [:create]

  def create
    @todo_task = @todo_group.todo_tasks.create(todo_task_params)
    redirect_to @todo_group
  end

  def destroy
    @todo_task = @todo_group.todo_tasks.find(params[:id])
    if @todo_task.destroy
      flash[:success] = "ToDo Task has been deleted."
    else
      flash[:error] = "ToDo Task could not be deleted."
    end
    redirect_to @todo_group
  end

  def complete
    if @todo_task.completed?
      @todo_task.update_attribute(:completed, nil)
    else
      @todo_task.update_attribute(:completed, Time.now)
    end
    redirect_to @todo_group, notice: "Task was completed!"
  end

  private

  def declare_todo_group
    @todo_group = TodoGroup.find(params[:todo_group_id])
  end

  def todo_task_params
    params[:todo_task].permit(:content, :completed)
  end

  def declare_todo_task
    @todo_task = TodoTask.find(params[:id])
  end

end
