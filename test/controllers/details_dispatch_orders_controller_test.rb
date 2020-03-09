require 'test_helper'

class DetailsDispatchOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @details_dispatch_order = details_dispatch_orders(:one)
  end

  test "should get index" do
    get details_dispatch_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_details_dispatch_order_url
    assert_response :success
  end

  test "should create details_dispatch_order" do
    assert_difference('DetailsDispatchOrder.count') do
      post details_dispatch_orders_url, params: { details_dispatch_order: { comment: @details_dispatch_order.comment, info_dispatch_order_id: @details_dispatch_order.info_dispatch_order_id, product_id: @details_dispatch_order.product_id, product_quantity: @details_dispatch_order.product_quantity } }
    end

    assert_redirected_to details_dispatch_order_url(DetailsDispatchOrder.last)
  end

  test "should show details_dispatch_order" do
    get details_dispatch_order_url(@details_dispatch_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_details_dispatch_order_url(@details_dispatch_order)
    assert_response :success
  end

  test "should update details_dispatch_order" do
    patch details_dispatch_order_url(@details_dispatch_order), params: { details_dispatch_order: { comment: @details_dispatch_order.comment, info_dispatch_order_id: @details_dispatch_order.info_dispatch_order_id, product_id: @details_dispatch_order.product_id, product_quantity: @details_dispatch_order.product_quantity } }
    assert_redirected_to details_dispatch_order_url(@details_dispatch_order)
  end

  test "should destroy details_dispatch_order" do
    assert_difference('DetailsDispatchOrder.count', -1) do
      delete details_dispatch_order_url(@details_dispatch_order)
    end

    assert_redirected_to details_dispatch_orders_url
  end
end
