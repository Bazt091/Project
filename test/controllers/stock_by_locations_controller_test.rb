require 'test_helper'

class StockByLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stock_by_location = stock_by_locations(:one)
  end

  test "should get index" do
    get stock_by_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_stock_by_location_url
    assert_response :success
  end

  test "should create stock_by_location" do
    assert_difference('StockByLocation.count') do
      post stock_by_locations_url, params: { stock_by_location: { location_id: @stock_by_location.location_id, product_id: @stock_by_location.product_id, product_quantity: @stock_by_location.product_quantity } }
    end

    assert_redirected_to stock_by_location_url(StockByLocation.last)
  end

  test "should show stock_by_location" do
    get stock_by_location_url(@stock_by_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_stock_by_location_url(@stock_by_location)
    assert_response :success
  end

  test "should update stock_by_location" do
    patch stock_by_location_url(@stock_by_location), params: { stock_by_location: { location_id: @stock_by_location.location_id, product_id: @stock_by_location.product_id, product_quantity: @stock_by_location.product_quantity } }
    assert_redirected_to stock_by_location_url(@stock_by_location)
  end

  test "should destroy stock_by_location" do
    assert_difference('StockByLocation.count', -1) do
      delete stock_by_location_url(@stock_by_location)
    end

    assert_redirected_to stock_by_locations_url
  end
end
