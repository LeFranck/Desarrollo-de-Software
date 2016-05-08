require 'test_helper'

class ProjectvotesControllerTest < ActionController::TestCase
  setup do
    @projectvote = projectvotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projectvotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projectvote" do
    assert_difference('Projectvote.count') do
      post :create, projectvote: { project_id: @projectvote.project_id, rating: @projectvote.rating, user_id: @projectvote.user_id }
    end

    assert_redirected_to projectvote_path(assigns(:projectvote))
  end

  test "should show projectvote" do
    get :show, id: @projectvote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projectvote
    assert_response :success
  end

  test "should update projectvote" do
    patch :update, id: @projectvote, projectvote: { project_id: @projectvote.project_id, rating: @projectvote.rating, user_id: @projectvote.user_id }
    assert_redirected_to projectvote_path(assigns(:projectvote))
  end

  test "should destroy projectvote" do
    assert_difference('Projectvote.count', -1) do
      delete :destroy, id: @projectvote
    end

    assert_redirected_to projectvotes_path
  end
end
