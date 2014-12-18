require 'test_helper'

class ToBuysControllerTest < ActionController::TestCase
  setup do
    @to_buy = to_buys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:to_buys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create to_buy" do
    assert_difference('ToBuy.count') do
      post :create, to_buy: { dish_id: @to_buy.dish_id, user_id: @to_buy.user_id }
    end

    assert_redirected_to to_buy_path(assigns(:to_buy))
  end

  test "should show to_buy" do
    get :show, id: @to_buy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @to_buy
    assert_response :success
  end

  test "should update to_buy" do
    patch :update, id: @to_buy, to_buy: { dish_id: @to_buy.dish_id, user_id: @to_buy.user_id }
    assert_redirected_to to_buy_path(assigns(:to_buy))
  end

  test "should destroy to_buy" do
    assert_difference('ToBuy.count', -1) do
      delete :destroy, id: @to_buy
    end

    assert_redirected_to to_buys_path
  end
end
