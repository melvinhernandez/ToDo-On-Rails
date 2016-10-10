class TodoGroupsController < ApplicationController
  before_action :set_todo_group, only: [:show, :edit, :update, :destroy]

  def index
    @todo_groups = TodoGroup.all
  end

  def show
  end

  def new
    @todo_group = TodoGroup.new
  end

  def edit
  end

  def create
    @todo_group = TodoGroup.new(todo_group_params)

    respond_to do |format|
      if @todo_group.save
        format.html { redirect_to @todo_group }
        format.json { render :show, status: :created, location: @todo_group }
      else
        format.html { render :new }
        format.json { render json: @todo_group.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @todo_group.update(todo_group_params)
        format.html { redirect_to @todo_group }
        format.json { render :show, status: :ok, location: @todo_group }
      else
        format.html { render :edit }
        format.json { render json: @todo_group.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @todo_group.destroy
    respond_to do |format|
      format.html { redirect_to todo_groups_url}
      format.json { head :no_content }
    end
  end

  private
    def set_todo_group
      @todo_group = TodoGroup.find(params[:id])
    end

    def todo_group_params
      params.require(:todo_group).permit(:title, :description)
    end
end
