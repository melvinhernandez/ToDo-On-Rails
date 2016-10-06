require 'test_helper'

class TodoGroupsControllerTest < ActionController::TestCase
  setup do
    @todo_group = todo_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:todo_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create todo_group" do
    assert_difference('TodoGroup.count') do
      post :create, todo_group: { description: @todo_group.description, title: @todo_group.title }
    end

    assert_redirected_to todo_group_path(assigns(:todo_group))
  end

  test "should show todo_group" do
    get :show, id: @todo_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @todo_group
    assert_response :success
  end

  test "should update todo_group" do
    patch :update, id: @todo_group, todo_group: { description: @todo_group.description, title: @todo_group.title }
    assert_redirected_to todo_group_path(assigns(:todo_group))
  end

  test "should destroy todo_group" do
    assert_difference('TodoGroup.count', -1) do
      delete :destroy, id: @todo_group
    end

    assert_redirected_to todo_groups_path
  end
end
