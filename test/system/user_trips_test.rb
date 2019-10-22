require "application_system_test_case"

class UserTripsTest < ApplicationSystemTestCase
  setup do
    @user_trip = user_trips(:one)
  end

  test "visiting the index" do
    visit user_trips_url
    assert_selector "h1", text: "User Trips"
  end

  test "creating a User trip" do
    visit user_trips_url
    click_on "New User Trip"

    check "Attended" if @user_trip.attended
    check "Favorite" if @user_trip.favorite
    fill_in "Trip", with: @user_trip.trip_id
    fill_in "User", with: @user_trip.user_id
    click_on "Create User trip"

    assert_text "User trip was successfully created"
    click_on "Back"
  end

  test "updating a User trip" do
    visit user_trips_url
    click_on "Edit", match: :first

    check "Attended" if @user_trip.attended
    check "Favorite" if @user_trip.favorite
    fill_in "Trip", with: @user_trip.trip_id
    fill_in "User", with: @user_trip.user_id
    click_on "Update User trip"

    assert_text "User trip was successfully updated"
    click_on "Back"
  end

  test "destroying a User trip" do
    visit user_trips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User trip was successfully destroyed"
  end
end
