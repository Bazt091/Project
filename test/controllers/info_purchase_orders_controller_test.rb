require 'test_helper'

class InfoPurchaseOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @info_purchase_order = info_purchase_orders(:one)
  end

  test "should get index" do
    get info_purchase_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_info_purchase_order_url
    assert_response :success
  end

  test "should create info_purchase_order" do
    assert_difference('InfoPurchaseOrder.count') do
      post info_purchase_orders_url, params: { info_purchase_order: { provider_id: @info_purchase_order.provider_id, provider_name: @info_purchase_order.provider_name, user_id: @info_purchase_order.user_id, user_name: @info_purchase_order.user_name } }
    end

    assert_redirected_to info_purchase_order_url(InfoPurchaseOrder.last)
  end

  test "should show info_purchase_order" do
    get info_purchase_order_url(@info_purchase_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_info_purchase_order_url(@info_purchase_order)
    assert_response :success
  end

  test "should update info_purchase_order" do
    patch info_purchase_order_url(@info_purchase_order), params: { info_purchase_order: { provider_id: @info_purchase_order.provider_id, provider_name: @info_purchase_order.provider_name, user_id: @info_purchase_order.user_id, user_name: @info_purchase_order.user_name } }
    assert_redirected_to info_purchase_order_url(@info_purchase_order)
  end

  test "should destroy info_purchase_order" do
    assert_difference('InfoPurchaseOrder.count', -1) do
      delete info_purchase_order_url(@info_purchase_order)
    end

    assert_redirected_to info_purchase_orders_url
  end
end
