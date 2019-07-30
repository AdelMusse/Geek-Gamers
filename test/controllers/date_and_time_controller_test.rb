require 'test_helper'

class DateAndTimeControllerTest < ActionDispatch::IntegrationTest
  test "should get date_time" do
    get date_and_time_date_time_url
    assert_response :success
  end

end
