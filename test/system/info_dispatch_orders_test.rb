require "application_system_test_case"

class InfoDispatchOrdersTest < ApplicationSystemTestCase
  setup do
    @info_dispatch_order = info_dispatch_orders(:one)
  end

  test "visiting the index" do
    visit info_dispatch_orders_url
    assert_selector "h1", text: "Info Dispatch Orders"
  end

  test "creating a Info dispatch order" do
    visit info_dispatch_orders_url
    click_on "New Info Dispatch Order"

    fill_in "Client", with: @info_dispatch_order.client_id
    fill_in "Client name", with: @info_dispatch_order.client_name
    fill_in "Client order purchase", with: @info_dispatch_order.client_order_purchase
    fill_in "User", with: @info_dispatch_order.user_id
    fill_in "User name", with: @info_dispatch_order.user_name
    click_on "Create Info dispatch order"

    assert_text "Info dispatch order was successfully created"
    click_on "Back"
  end

  test "updating a Info dispatch order" do
    visit info_dispatch_orders_url
    click_on "Edit", match: :first

    fill_in "Client", with: @info_dispatch_order.client_id
    fill_in "Client name", with: @info_dispatch_order.client_name
    fill_in "Client order purchase", with: @info_dispatch_order.client_order_purchase
    fill_in "User", with: @info_dispatch_order.user_id
    fill_in "User name", with: @info_dispatch_order.user_name
    click_on "Update Info dispatch order"

    assert_text "Info dispatch order was successfully updated"
    click_on "Back"
  end

  test "destroying a Info dispatch order" do
    visit info_dispatch_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Info dispatch order was successfully destroyed"
  end
end
