require "application_system_test_case"

class InfoPurchaseOrdersTest < ApplicationSystemTestCase
  setup do
    @info_purchase_order = info_purchase_orders(:one)
  end

  test "visiting the index" do
    visit info_purchase_orders_url
    assert_selector "h1", text: "Info Purchase Orders"
  end

  test "creating a Info purchase order" do
    visit info_purchase_orders_url
    click_on "New Info Purchase Order"

    fill_in "Provider", with: @info_purchase_order.provider_id
    fill_in "Provider name", with: @info_purchase_order.provider_name
    fill_in "User", with: @info_purchase_order.user_id
    fill_in "User name", with: @info_purchase_order.user_name
    click_on "Create Info purchase order"

    assert_text "Info purchase order was successfully created"
    click_on "Back"
  end

  test "updating a Info purchase order" do
    visit info_purchase_orders_url
    click_on "Edit", match: :first

    fill_in "Provider", with: @info_purchase_order.provider_id
    fill_in "Provider name", with: @info_purchase_order.provider_name
    fill_in "User", with: @info_purchase_order.user_id
    fill_in "User name", with: @info_purchase_order.user_name
    click_on "Update Info purchase order"

    assert_text "Info purchase order was successfully updated"
    click_on "Back"
  end

  test "destroying a Info purchase order" do
    visit info_purchase_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Info purchase order was successfully destroyed"
  end
end
