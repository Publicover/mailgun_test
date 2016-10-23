require 'test_helper'
require 'minitest/pride'

class DashboardsControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get root_url
    assert_response :success
  end

end
