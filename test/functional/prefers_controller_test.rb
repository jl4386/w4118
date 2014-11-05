require 'test_helper'

class PrefersControllerTest < ActionController::TestCase
  setup do
    @prefer = prefers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prefers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prefer" do
    assert_difference('Prefer.count') do
      post :create, prefer: { importance: @prefer.importance, position: @prefer.position, proficiency: @prefer.proficiency, skill_id: @prefer.skill_id }
    end

    assert_redirected_to prefer_path(assigns(:prefer))
  end

  test "should show prefer" do
    get :show, id: @prefer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prefer
    assert_response :success
  end

  test "should update prefer" do
    put :update, id: @prefer, prefer: { importance: @prefer.importance, position: @prefer.position, proficiency: @prefer.proficiency, skill_id: @prefer.skill_id }
    assert_redirected_to prefer_path(assigns(:prefer))
  end

  test "should destroy prefer" do
    assert_difference('Prefer.count', -1) do
      delete :destroy, id: @prefer
    end

    assert_redirected_to prefers_path
  end
end
