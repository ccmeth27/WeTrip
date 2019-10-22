require 'test_helper'

class UserTripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_trip = user_trips(:one)
  end

  test "should get index" do
    get user_trips_url
    assert_response :success
  end

  test "should get new" do
    get new_user_trip_url
    assert_response :success
  end

  test "should create user_trip" do
    assert_difference('UserTrip.count') do
      post user_trips_url, params: { user_trip: { attended: @user_trip.attended, favorite: @user_trip.favorite, trip_id: @user_trip.trip_id, user_id: @user_trip.user_id } }
    end

    assert_redirected_to user_trip_url(UserTrip.last)
  end

  test "should show user_trip" do
    get user_trip_url(@user_trip)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_trip_url(@user_trip)
    assert_response :success
  end

  test "should update user_trip" do
    patch user_trip_url(@user_trip), params: { user_trip: { attended: @user_trip.attended, favorite: @user_trip.favorite, trip_id: @user_trip.trip_id, user_id: @user_trip.user_id } }
    assert_redirected_to user_trip_url(@user_trip)
  end

  test "should destroy user_trip" do
    assert_difference('UserTrip.count', -1) do
      delete user_trip_url(@user_trip)
    end

    assert_redirected_to user_trips_url
  end
end
