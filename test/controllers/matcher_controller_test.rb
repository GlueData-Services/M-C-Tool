require "test_helper"

class MatcherControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get matcher_index_url
    assert_response :success
  end
end
