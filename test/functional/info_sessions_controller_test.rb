require 'test_helper'

class InfoSessionsControllerTest < ActionController::TestCase
  setup do
    @info_session = info_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:info_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create info_session" do
    assert_difference('InfoSession.count') do
      post :create, info_session: { activity_id: @info_session.activity_id, contact_email: @info_session.contact_email, food: @info_session.food, host_company: @info_session.host_company, session_id: @info_session.session_id }
    end

    assert_redirected_to info_session_path(assigns(:info_session))
  end

  test "should show info_session" do
    get :show, id: @info_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @info_session
    assert_response :success
  end

  test "should update info_session" do
    put :update, id: @info_session, info_session: { activity_id: @info_session.activity_id, contact_email: @info_session.contact_email, food: @info_session.food, host_company: @info_session.host_company, session_id: @info_session.session_id }
    assert_redirected_to info_session_path(assigns(:info_session))
  end

  test "should destroy info_session" do
    assert_difference('InfoSession.count', -1) do
      delete :destroy, id: @info_session
    end

    assert_redirected_to info_sessions_path
  end
end
