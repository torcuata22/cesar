require "test_helper"

class DecodeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get decode_index_url
    assert_response :success
  end
end
