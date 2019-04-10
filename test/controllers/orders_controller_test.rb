require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get [create" do
    get orders_[create_url
    assert_response :success
  end

  test "should get update" do
    get orders_update_url
    assert_response :success
  end

  test "should get destroy]" do
    get orders_destroy]_url
    assert_response :success
  end

end
