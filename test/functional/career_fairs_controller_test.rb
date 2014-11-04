require 'test_helper'

class CareerFairsControllerTest < ActionController::TestCase
  setup do
    @career_fair = career_fairs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:career_fairs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create career_fair" do
    assert_difference('CareerFair.count') do
      post :create, career_fair: { activity_id: @career_fair.activity_id, fair_id: @career_fair.fair_id, person_in_charge: @career_fair.person_in_charge }
    end

    assert_redirected_to career_fair_path(assigns(:career_fair))
  end

  test "should show career_fair" do
    get :show, id: @career_fair
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @career_fair
    assert_response :success
  end

  test "should update career_fair" do
    put :update, id: @career_fair, career_fair: { activity_id: @career_fair.activity_id, fair_id: @career_fair.fair_id, person_in_charge: @career_fair.person_in_charge }
    assert_redirected_to career_fair_path(assigns(:career_fair))
  end

  test "should destroy career_fair" do
    assert_difference('CareerFair.count', -1) do
      delete :destroy, id: @career_fair
    end

    assert_redirected_to career_fairs_path
  end
end
