require 'test_helper'

class RecruitmentActivitiesControllerTest < ActionController::TestCase
  setup do
    @recruitment_activity = recruitment_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recruitment_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recruitment_activity" do
    assert_difference('RecruitmentActivity.count') do
      post :create, recruitment_activity: { activity_date: @recruitment_activity.activity_date, activity_id: @recruitment_activity.activity_id, activity_name: @recruitment_activity.activity_name, dress_code: @recruitment_activity.dress_code, location: @recruitment_activity.location }
    end

    assert_redirected_to recruitment_activity_path(assigns(:recruitment_activity))
  end

  test "should show recruitment_activity" do
    get :show, id: @recruitment_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recruitment_activity
    assert_response :success
  end

  test "should update recruitment_activity" do
    put :update, id: @recruitment_activity, recruitment_activity: { activity_date: @recruitment_activity.activity_date, activity_id: @recruitment_activity.activity_id, activity_name: @recruitment_activity.activity_name, dress_code: @recruitment_activity.dress_code, location: @recruitment_activity.location }
    assert_redirected_to recruitment_activity_path(assigns(:recruitment_activity))
  end

  test "should destroy recruitment_activity" do
    assert_difference('RecruitmentActivity.count', -1) do
      delete :destroy, id: @recruitment_activity
    end

    assert_redirected_to recruitment_activities_path
  end
end
