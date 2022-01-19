require "test_helper"

class VisitorsZoneAccesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visitors_zone_acce = visitors_zone_acces(:one)
  end

  test "should get index" do
    get visitors_zone_acces_url
    assert_response :success
  end

  test "should get new" do
    get new_visitors_zone_acce_url
    assert_response :success
  end

  test "should create visitors_zone_acce" do
    assert_difference("VisitorsZoneAcce.count") do
      post visitors_zone_acces_url, params: { visitors_zone_acce: {  } }
    end

    assert_redirected_to visitors_zone_acce_url(VisitorsZoneAcce.last)
  end

  test "should show visitors_zone_acce" do
    get visitors_zone_acce_url(@visitors_zone_acce)
    assert_response :success
  end

  test "should get edit" do
    get edit_visitors_zone_acce_url(@visitors_zone_acce)
    assert_response :success
  end

  test "should update visitors_zone_acce" do
    patch visitors_zone_acce_url(@visitors_zone_acce), params: { visitors_zone_acce: {  } }
    assert_redirected_to visitors_zone_acce_url(@visitors_zone_acce)
  end

  test "should destroy visitors_zone_acce" do
    assert_difference("VisitorsZoneAcce.count", -1) do
      delete visitors_zone_acce_url(@visitors_zone_acce)
    end

    assert_redirected_to visitors_zone_acces_url
  end
end
