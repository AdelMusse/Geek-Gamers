require 'test_helper'

class UsersHomeControllerTest < ActionDispatch::IntegrationTest
  test "should get users_home" do
    get users_home_users_home_url
    assert_response :success
  end

end
