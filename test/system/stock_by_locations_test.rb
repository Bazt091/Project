require "application_system_test_case"

class StockByLocationsTest < ApplicationSystemTestCase
  setup do
    @stock_by_location = stock_by_locations(:one)
  end

  test "visiting the index" do
    visit stock_by_locations_url
    assert_selector "h1", text: "Stock By Locations"
  end

  test "creating a Stock by location" do
    visit stock_by_locations_url
    click_on "New Stock By Location"

    fill_in "Location", with: @stock_by_location.location_id
    fill_in "Product", with: @stock_by_location.product_id
    fill_in "Product quantity", with: @stock_by_location.product_quantity
    click_on "Create Stock by location"

    assert_text "Stock by location was successfully created"
    click_on "Back"
  end

  test "updating a Stock by location" do
    visit stock_by_locations_url
    click_on "Edit", match: :first

    fill_in "Location", with: @stock_by_location.location_id
    fill_in "Product", with: @stock_by_location.product_id
    fill_in "Product quantity", with: @stock_by_location.product_quantity
    click_on "Update Stock by location"

    assert_text "Stock by location was successfully updated"
    click_on "Back"
  end

  test "destroying a Stock by location" do
    visit stock_by_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stock by location was successfully destroyed"
  end
end
