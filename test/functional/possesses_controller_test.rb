require 'test_helper'

class PossessesControllerTest < ActionController::TestCase
  setup do
    @possess = possesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:possesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create possess" do
    assert_difference('Possess.count') do
      post :create, possess: { integer: @possess.integer, proficiency: @possess.proficiency, skill_id: @possess.skill_id, user_id: @possess.user_id }
    end

    assert_redirected_to possess_path(assigns(:possess))
  end

  test "should show possess" do
    get :show, id: @possess
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @possess
    assert_response :success
  end

  test "should update possess" do
    put :update, id: @possess, possess: { integer: @possess.integer, proficiency: @possess.proficiency, skill_id: @possess.skill_id, user_id: @possess.user_id }
    assert_redirected_to possess_path(assigns(:possess))
  end

  test "should destroy possess" do
    assert_difference('Possess.count', -1) do
      delete :destroy, id: @possess
    end

    assert_redirected_to possesses_path
  end
end
