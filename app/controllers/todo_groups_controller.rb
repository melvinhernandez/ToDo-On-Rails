class TodoGroupsController < ApplicationController
  before_action :set_todo_group, only: [:show, :edit, :update, :destroy]

  # GET /todo_groups
  # GET /todo_groups.json
  def index
    @todo_groups = TodoGroup.all
  end

  # GET /todo_groups/1
  # GET /todo_groups/1.json
  def show
  end

  # GET /todo_groups/new
  def new
    @todo_group = TodoGroup.new
  end

  # GET /todo_groups/1/edit
  def edit
  end

  # POST /todo_groups
  # POST /todo_groups.json
  def create
    @todo_group = TodoGroup.new(todo_group_params)

    respond_to do |format|
      if @todo_group.save
        format.html { redirect_to @todo_group, notice: 'Todo group was successfully created.' }
        format.json { render :show, status: :created, location: @todo_group }
      else
        format.html { render :new }
        format.json { render json: @todo_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo_groups/1
  # PATCH/PUT /todo_groups/1.json
  def update
    respond_to do |format|
      if @todo_group.update(todo_group_params)
        format.html { redirect_to @todo_group, notice: 'Todo group was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo_group }
      else
        format.html { render :edit }
        format.json { render json: @todo_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_groups/1
  # DELETE /todo_groups/1.json
  def destroy
    @todo_group.destroy
    respond_to do |format|
      format.html { redirect_to todo_groups_url, notice: 'Todo group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_group
      @todo_group = TodoGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_group_params
      params.require(:todo_group).permit(:title, :description)
    end
end
