require "application_system_test_case"

class ReceptionsTest < ApplicationSystemTestCase
  setup do
    @reception = receptions(:one)
  end

  test "visiting the index" do
    visit receptions_url
    assert_selector "h1", text: "Receptions"
  end

  test "creating a Reception" do
    visit receptions_url
    click_on "New Reception"

    fill_in "Details purchase orders", with: @reception.details_purchase_orders_id
    fill_in "Quantity ok", with: @reception.quantity_ok
    click_on "Create Reception"

    assert_text "Reception was successfully created"
    click_on "Back"
  end

  test "updating a Reception" do
    visit receptions_url
    click_on "Edit", match: :first

    fill_in "Details purchase orders", with: @reception.details_purchase_orders_id
    fill_in "Quantity ok", with: @reception.quantity_ok
    click_on "Update Reception"

    assert_text "Reception was successfully updated"
    click_on "Back"
  end

  test "destroying a Reception" do
    visit receptions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reception was successfully destroyed"
  end
end
