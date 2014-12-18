require 'test_helper'

class RestaurantFeedbacksControllerTest < ActionController::TestCase
  setup do
    @restaurant_feedback = restaurant_feedbacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurant_feedbacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant_feedback" do
    assert_difference('RestaurantFeedback.count') do
      post :create, restaurant_feedback: { content: @restaurant_feedback.content, restaurant_id: @restaurant_feedback.restaurant_id, user_id: @restaurant_feedback.user_id }
    end

    assert_redirected_to restaurant_feedback_path(assigns(:restaurant_feedback))
  end

  test "should show restaurant_feedback" do
    get :show, id: @restaurant_feedback
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant_feedback
    assert_response :success
  end

  test "should update restaurant_feedback" do
    patch :update, id: @restaurant_feedback, restaurant_feedback: { content: @restaurant_feedback.content, restaurant_id: @restaurant_feedback.restaurant_id, user_id: @restaurant_feedback.user_id }
    assert_redirected_to restaurant_feedback_path(assigns(:restaurant_feedback))
  end

  test "should destroy restaurant_feedback" do
    assert_difference('RestaurantFeedback.count', -1) do
      delete :destroy, id: @restaurant_feedback
    end

    assert_redirected_to restaurant_feedbacks_path
  end
end
