require 'test_helper'

class RevenusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get revenus_index_url
    assert_response :success
  end

end
