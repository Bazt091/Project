require 'test_helper'

class SearchDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get search_details_index_url
    assert_response :success
  end

end
