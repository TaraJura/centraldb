require "application_system_test_case"

class VisitorsZoneAccesTest < ApplicationSystemTestCase
  setup do
    @visitors_zone_acce = visitors_zone_acces(:one)
  end

  test "visiting the index" do
    visit visitors_zone_acces_url
    assert_selector "h1", text: "Visitors zone acces"
  end

  test "should create visitors zone acce" do
    visit visitors_zone_acces_url
    click_on "New visitors zone acce"

    click_on "Create Visitors zone acce"

    assert_text "Visitors zone acce was successfully created"
    click_on "Back"
  end

  test "should update Visitors zone acce" do
    visit visitors_zone_acce_url(@visitors_zone_acce)
    click_on "Edit this visitors zone acce", match: :first

    click_on "Update Visitors zone acce"

    assert_text "Visitors zone acce was successfully updated"
    click_on "Back"
  end

  test "should destroy Visitors zone acce" do
    visit visitors_zone_acce_url(@visitors_zone_acce)
    click_on "Destroy this visitors zone acce", match: :first

    assert_text "Visitors zone acce was successfully destroyed"
  end
end
