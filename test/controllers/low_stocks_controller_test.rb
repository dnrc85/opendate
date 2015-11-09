require 'test_helper'

class LowStocksControllerTest < ActionController::TestCase
  setup do
    @low_stock = low_stocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:low_stocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create low_stock" do
    assert_difference('LowStock.count') do
      post :create, low_stock: {  }
    end

    assert_redirected_to low_stock_path(assigns(:low_stock))
  end

  test "should show low_stock" do
    get :show, id: @low_stock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @low_stock
    assert_response :success
  end

  test "should update low_stock" do
    patch :update, id: @low_stock, low_stock: {  }
    assert_redirected_to low_stock_path(assigns(:low_stock))
  end

  test "should destroy low_stock" do
    assert_difference('LowStock.count', -1) do
      delete :destroy, id: @low_stock
    end

    assert_redirected_to low_stocks_path
  end
end
