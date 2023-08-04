require "test_helper"

class EncodeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get encode_index_url
    assert_response :success
  end
end
