require "test_helper"

class CustomersZoneAccesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customers_zone_acce = customers_zone_acces(:one)
  end

  test "should get index" do
    get customers_zone_acces_url
    assert_response :success
  end

  test "should get new" do
    get new_customers_zone_acce_url
    assert_response :success
  end

  test "should create customers_zone_acce" do
    assert_difference("CustomersZoneAcce.count") do
      post customers_zone_acces_url, params: { customers_zone_acce: {  } }
    end

    assert_redirected_to customers_zone_acce_url(CustomersZoneAcce.last)
  end

  test "should show customers_zone_acce" do
    get customers_zone_acce_url(@customers_zone_acce)
    assert_response :success
  end

  test "should get edit" do
    get edit_customers_zone_acce_url(@customers_zone_acce)
    assert_response :success
  end

  test "should update customers_zone_acce" do
    patch customers_zone_acce_url(@customers_zone_acce), params: { customers_zone_acce: {  } }
    assert_redirected_to customers_zone_acce_url(@customers_zone_acce)
  end

  test "should destroy customers_zone_acce" do
    assert_difference("CustomersZoneAcce.count", -1) do
      delete customers_zone_acce_url(@customers_zone_acce)
    end

    assert_redirected_to customers_zone_acces_url
  end
end
