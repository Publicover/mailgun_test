require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get write_email" do
    get reports_write_email_url
    assert_response :success
  end

  test "should get send_email" do
    get reports_send_email_url
    assert_response :success
  end

end
