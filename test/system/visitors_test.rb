require "application_system_test_case"

class VisitorsTest < ApplicationSystemTestCase
  setup do
    @visitor = visitors(:one)
  end

  test "visiting the index" do
    visit visitors_url
    assert_selector "h1", text: "Visitors"
  end

  test "should create visitor" do
    visit visitors_url
    click_on "New visitor"

    fill_in "Email", with: @visitor.email
    fill_in "Expires", with: @visitor.expires
    fill_in "Identity card number", with: @visitor.identity_card_number
    fill_in "Identity card type", with: @visitor.identity_card_type
    fill_in "Name", with: @visitor.name
    fill_in "Phone", with: @visitor.phone
    click_on "Create Visitor"

    assert_text "Visitor was successfully created"
    click_on "Back"
  end

  test "should update Visitor" do
    visit visitor_url(@visitor)
    click_on "Edit this visitor", match: :first

    fill_in "Email", with: @visitor.email
    fill_in "Expires", with: @visitor.expires
    fill_in "Identity card number", with: @visitor.identity_card_number
    fill_in "Identity card type", with: @visitor.identity_card_type
    fill_in "Name", with: @visitor.name
    fill_in "Phone", with: @visitor.phone
    click_on "Update Visitor"

    assert_text "Visitor was successfully updated"
    click_on "Back"
  end

  test "should destroy Visitor" do
    visit visitor_url(@visitor)
    click_on "Destroy this visitor", match: :first

    assert_text "Visitor was successfully destroyed"
  end
end
