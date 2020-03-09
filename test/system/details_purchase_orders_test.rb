require "application_system_test_case"

class DetailsPurchaseOrdersTest < ApplicationSystemTestCase
  setup do
    @details_purchase_order = details_purchase_orders(:one)
  end

  test "visiting the index" do
    visit details_purchase_orders_url
    assert_selector "h1", text: "Details Purchase Orders"
  end

  test "creating a Details purchase order" do
    visit details_purchase_orders_url
    click_on "New Details Purchase Order"

    fill_in "Comment", with: @details_purchase_order.comment
    fill_in "Info purchase order", with: @details_purchase_order.info_purchase_order_id
    fill_in "Product", with: @details_purchase_order.product_id
    fill_in "Product quantity", with: @details_purchase_order.product_quantity
    click_on "Create Details purchase order"

    assert_text "Details purchase order was successfully created"
    click_on "Back"
  end

  test "updating a Details purchase order" do
    visit details_purchase_orders_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @details_purchase_order.comment
    fill_in "Info purchase order", with: @details_purchase_order.info_purchase_order_id
    fill_in "Product", with: @details_purchase_order.product_id
    fill_in "Product quantity", with: @details_purchase_order.product_quantity
    click_on "Update Details purchase order"

    assert_text "Details purchase order was successfully updated"
    click_on "Back"
  end

  test "destroying a Details purchase order" do
    visit details_purchase_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Details purchase order was successfully destroyed"
  end
end
