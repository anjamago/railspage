require 'test_helper'

class ChirpsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get chirps_new_url
    assert_response :success
  end

  test "should get create" do
    get chirps_create_url
    assert_response :success
  end

  test "should get show" do
    get chirps_show_url
    assert_response :success
  end

end
