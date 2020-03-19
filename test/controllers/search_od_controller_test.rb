require 'test_helper'

class SearchOdControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get search_od_index_url
    assert_response :success
  end

end
