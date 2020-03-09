require "application_system_test_case"

class DetailsDispatchOrdersTest < ApplicationSystemTestCase
  setup do
    @details_dispatch_order = details_dispatch_orders(:one)
  end

  test "visiting the index" do
    visit details_dispatch_orders_url
    assert_selector "h1", text: "Details Dispatch Orders"
  end

  test "creating a Details dispatch order" do
    visit details_dispatch_orders_url
    click_on "New Details Dispatch Order"

    fill_in "Comment", with: @details_dispatch_order.comment
    fill_in "Info dispatch order", with: @details_dispatch_order.info_dispatch_order_id
    fill_in "Product", with: @details_dispatch_order.product_id
    fill_in "Product quantity", with: @details_dispatch_order.product_quantity
    click_on "Create Details dispatch order"

    assert_text "Details dispatch order was successfully created"
    click_on "Back"
  end

  test "updating a Details dispatch order" do
    visit details_dispatch_orders_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @details_dispatch_order.comment
    fill_in "Info dispatch order", with: @details_dispatch_order.info_dispatch_order_id
    fill_in "Product", with: @details_dispatch_order.product_id
    fill_in "Product quantity", with: @details_dispatch_order.product_quantity
    click_on "Update Details dispatch order"

    assert_text "Details dispatch order was successfully updated"
    click_on "Back"
  end

  test "destroying a Details dispatch order" do
    visit details_dispatch_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Details dispatch order was successfully destroyed"
  end
end
