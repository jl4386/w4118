require 'test_helper'

class ParticipatesControllerTest < ActionController::TestCase
  setup do
    @participate = participates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:participates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create participate" do
    assert_difference('Participate.count') do
      post :create, participate: { activity_id: @participate.activity_id, booth: @participate.booth, company_id: @participate.company_id, contact_email: @participate.contact_email }
    end

    assert_redirected_to participate_path(assigns(:participate))
  end

  test "should show participate" do
    get :show, id: @participate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @participate
    assert_response :success
  end

  test "should update participate" do
    put :update, id: @participate, participate: { activity_id: @participate.activity_id, booth: @participate.booth, company_id: @participate.company_id, contact_email: @participate.contact_email }
    assert_redirected_to participate_path(assigns(:participate))
  end

  test "should destroy participate" do
    assert_difference('Participate.count', -1) do
      delete :destroy, id: @participate
    end

    assert_redirected_to participates_path
  end
end
