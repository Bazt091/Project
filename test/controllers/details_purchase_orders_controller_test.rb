require 'test_helper'

class DetailsPurchaseOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @details_purchase_order = details_purchase_orders(:one)
  end

  test "should get index" do
    get details_purchase_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_details_purchase_order_url
    assert_response :success
  end

  test "should create details_purchase_order" do
    assert_difference('DetailsPurchaseOrder.count') do
      post details_purchase_orders_url, params: { details_purchase_order: { comment: @details_purchase_order.comment, info_purchase_order_id: @details_purchase_order.info_purchase_order_id, product_id: @details_purchase_order.product_id, product_quantity: @details_purchase_order.product_quantity } }
    end

    assert_redirected_to details_purchase_order_url(DetailsPurchaseOrder.last)
  end

  test "should show details_purchase_order" do
    get details_purchase_order_url(@details_purchase_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_details_purchase_order_url(@details_purchase_order)
    assert_response :success
  end

  test "should update details_purchase_order" do
    patch details_purchase_order_url(@details_purchase_order), params: { details_purchase_order: { comment: @details_purchase_order.comment, info_purchase_order_id: @details_purchase_order.info_purchase_order_id, product_id: @details_purchase_order.product_id, product_quantity: @details_purchase_order.product_quantity } }
    assert_redirected_to details_purchase_order_url(@details_purchase_order)
  end

  test "should destroy details_purchase_order" do
    assert_difference('DetailsPurchaseOrder.count', -1) do
      delete details_purchase_order_url(@details_purchase_order)
    end

    assert_redirected_to details_purchase_orders_url
  end
end
