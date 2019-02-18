require 'test_helper'

class BrandPlansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get brand_plans_index_url
    assert_response :success
  end

  test "should get show" do
    get brand_plans_show_url
    assert_response :success
  end

end
