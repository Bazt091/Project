require 'test_helper'

class InfoDispatchOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @info_dispatch_order = info_dispatch_orders(:one)
  end

  test "should get index" do
    get info_dispatch_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_info_dispatch_order_url
    assert_response :success
  end

  test "should create info_dispatch_order" do
    assert_difference('InfoDispatchOrder.count') do
      post info_dispatch_orders_url, params: { info_dispatch_order: { client_id: @info_dispatch_order.client_id, client_name: @info_dispatch_order.client_name, client_order_purchase: @info_dispatch_order.client_order_purchase, user_id: @info_dispatch_order.user_id, user_name: @info_dispatch_order.user_name } }
    end

    assert_redirected_to info_dispatch_order_url(InfoDispatchOrder.last)
  end

  test "should show info_dispatch_order" do
    get info_dispatch_order_url(@info_dispatch_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_info_dispatch_order_url(@info_dispatch_order)
    assert_response :success
  end

  test "should update info_dispatch_order" do
    patch info_dispatch_order_url(@info_dispatch_order), params: { info_dispatch_order: { client_id: @info_dispatch_order.client_id, client_name: @info_dispatch_order.client_name, client_order_purchase: @info_dispatch_order.client_order_purchase, user_id: @info_dispatch_order.user_id, user_name: @info_dispatch_order.user_name } }
    assert_redirected_to info_dispatch_order_url(@info_dispatch_order)
  end

  test "should destroy info_dispatch_order" do
    assert_difference('InfoDispatchOrder.count', -1) do
      delete info_dispatch_order_url(@info_dispatch_order)
    end

    assert_redirected_to info_dispatch_orders_url
  end
end
