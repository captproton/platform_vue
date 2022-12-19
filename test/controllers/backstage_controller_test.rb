require "test_helper"

class BackstageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backstage_index_url
    assert_response :success
  end

  test "should get _dashboard" do
    get backstage__dashboard_url
    assert_response :success
  end

  test "should get _home" do
    get backstage__home_url
    assert_response :success
  end
end
