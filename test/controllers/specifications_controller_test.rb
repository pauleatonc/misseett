require 'test_helper'

class SpecificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get specifications_show_url
    assert_response :success
  end

end
