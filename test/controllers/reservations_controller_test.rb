require 'test_helper'

class ReservationsControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get reservations_url
    assert_response :success
  end

  # test "should get edit" do
  #   get edit_reservation_url
  #   assert_response :success
  # end

  test "should get new" do
    get new_reservation_url
    assert_response :success
  end

  # test "should get show" do
  #   get reservation_url
  #   assert_response :success
  # end

end
