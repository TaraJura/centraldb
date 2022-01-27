require "test_helper"


class VisitorsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    sign_in users(:superadmin)
    @visitor = visitors(:visitor1)
    @email = Faker::Internet.email
    @customer = customers(:customer)
    
  end

  test "should get index" do
    get visitors_url
    assert_response :success
  end

  test "should get new" do
    get new_visitor_url
    assert_response :success
  end

  test "should create visitor" do
    assert_difference("Visitor.count") do
      post visitors_url, params: { visitor: { email: @email, expires: @visitor.expires, identity_card_number: @visitor.identity_card_number, identity_card_type: @visitor.identity_card_type, name: @visitor.name, phone: @visitor.phone, customer_id: @customer.id } }
    end

    assert_redirected_to visitor_url(Visitor.last)
  end

  test "should show visitor" do
    get visitor_url(@visitor)
    assert_response :success
  end

  test "should get edit" do
    get edit_visitor_url(@visitor)
    assert_response :success
  end

  test "should update visitor" do
    patch visitor_url(@visitor), params: { visitor: { email: @visitor.email, expires: @visitor.expires, identity_card_number: @visitor.identity_card_number, identity_card_type: @visitor.identity_card_type, name: @visitor.name, phone: @visitor.phone } }
    assert_redirected_to visitor_url(@visitor)
  end

  test "should destroy visitor" do
    assert_difference("Visitor.count", -1) do
      delete visitor_url(@visitor)
    end

    assert_redirected_to visitors_url
  end
end
