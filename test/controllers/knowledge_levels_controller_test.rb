require 'test_helper'

class KnowledgeLevelsControllerTest < ActionController::TestCase
  setup do
    @knowledge_level = knowledge_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:knowledge_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create knowledge_level" do
    assert_difference('KnowledgeLevel.count') do
      post :create, knowledge_level: { description: @knowledge_level.description, level: @knowledge_level.level }
    end

    assert_redirected_to knowledge_level_path(assigns(:knowledge_level))
  end

  test "should show knowledge_level" do
    get :show, id: @knowledge_level
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @knowledge_level
    assert_response :success
  end

  test "should update knowledge_level" do
    patch :update, id: @knowledge_level, knowledge_level: { description: @knowledge_level.description, level: @knowledge_level.level }
    assert_redirected_to knowledge_level_path(assigns(:knowledge_level))
  end

  test "should destroy knowledge_level" do
    assert_difference('KnowledgeLevel.count', -1) do
      delete :destroy, id: @knowledge_level
    end

    assert_redirected_to knowledge_levels_path
  end
end
