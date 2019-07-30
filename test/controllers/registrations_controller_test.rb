require 'test_helper'

class RegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "should get signin" do
    get registrations_signin_url
    assert_response :success
  end

  test "should get signup" do
    get registrations_signup_url
    assert_response :success
  end

end
