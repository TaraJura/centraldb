require "application_system_test_case"

class CustomersZoneAccesTest < ApplicationSystemTestCase
  setup do
    @customers_zone_acce = customers_zone_acces(:one)
  end

  test "visiting the index" do
    visit customers_zone_acces_url
    assert_selector "h1", text: "Customers zone acces"
  end

  test "should create customers zone acce" do
    visit customers_zone_acces_url
    click_on "New customers zone acce"

    click_on "Create Customers zone acce"

    assert_text "Customers zone acce was successfully created"
    click_on "Back"
  end

  test "should update Customers zone acce" do
    visit customers_zone_acce_url(@customers_zone_acce)
    click_on "Edit this customers zone acce", match: :first

    click_on "Update Customers zone acce"

    assert_text "Customers zone acce was successfully updated"
    click_on "Back"
  end

  test "should destroy Customers zone acce" do
    visit customers_zone_acce_url(@customers_zone_acce)
    click_on "Destroy this customers zone acce", match: :first

    assert_text "Customers zone acce was successfully destroyed"
  end
end
