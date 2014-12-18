require 'test_helper'

class DriverFeedbacksControllerTest < ActionController::TestCase
  setup do
    @driver_feedback = driver_feedbacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:driver_feedbacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create driver_feedback" do
    assert_difference('DriverFeedback.count') do
      post :create, driver_feedback: { description: @driver_feedback.description, driver_id: @driver_feedback.driver_id, user_id: @driver_feedback.user_id }
    end

    assert_redirected_to driver_feedback_path(assigns(:driver_feedback))
  end

  test "should show driver_feedback" do
    get :show, id: @driver_feedback
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @driver_feedback
    assert_response :success
  end

  test "should update driver_feedback" do
    patch :update, id: @driver_feedback, driver_feedback: { description: @driver_feedback.description, driver_id: @driver_feedback.driver_id, user_id: @driver_feedback.user_id }
    assert_redirected_to driver_feedback_path(assigns(:driver_feedback))
  end

  test "should destroy driver_feedback" do
    assert_difference('DriverFeedback.count', -1) do
      delete :destroy, id: @driver_feedback
    end

    assert_redirected_to driver_feedbacks_path
  end
end
