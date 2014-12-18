require 'test_helper'

class DishFeedbacksControllerTest < ActionController::TestCase
  setup do
    @dish_feedback = dish_feedbacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dish_feedbacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dish_feedback" do
    assert_difference('DishFeedback.count') do
      post :create, dish_feedback: { content: @dish_feedback.content, dish_id: @dish_feedback.dish_id, user_id: @dish_feedback.user_id }
    end

    assert_redirected_to dish_feedback_path(assigns(:dish_feedback))
  end

  test "should show dish_feedback" do
    get :show, id: @dish_feedback
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dish_feedback
    assert_response :success
  end

  test "should update dish_feedback" do
    patch :update, id: @dish_feedback, dish_feedback: { content: @dish_feedback.content, dish_id: @dish_feedback.dish_id, user_id: @dish_feedback.user_id }
    assert_redirected_to dish_feedback_path(assigns(:dish_feedback))
  end

  test "should destroy dish_feedback" do
    assert_difference('DishFeedback.count', -1) do
      delete :destroy, id: @dish_feedback
    end

    assert_redirected_to dish_feedbacks_path
  end
end
