require 'test_helper'

class TicketZonesControllerTest < ActionDispatch::IntegrationTest
  test "should get [create" do
    get ticket_zones_[create_url
    assert_response :success
  end

  test "should get update" do
    get ticket_zones_update_url
    assert_response :success
  end

  test "should get destroy]" do
    get ticket_zones_destroy]_url
    assert_response :success
  end

end
