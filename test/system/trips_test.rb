require "application_system_test_case"

class TripsTest < ApplicationSystemTestCase
  setup do
    @trip = trips(:one)
  end

  test "visiting the index" do
    visit trips_url
    assert_selector "h1", text: "Trips"
  end

  test "creating a Trip" do
    visit trips_url
    click_on "New Trip"

    fill_in "Cost", with: @trip.cost
    fill_in "End date", with: @trip.end_date
    fill_in "Lodging", with: @trip.lodging
    fill_in "Meals", with: @trip.meals
    fill_in "Start date", with: @trip.start_date
    fill_in "Title", with: @trip.title
    fill_in "Transportation", with: @trip.transportation
    click_on "Create Trip"

    assert_text "Trip was successfully created"
    click_on "Back"
  end

  test "updating a Trip" do
    visit trips_url
    click_on "Edit", match: :first

    fill_in "Cost", with: @trip.cost
    fill_in "End date", with: @trip.end_date
    fill_in "Lodging", with: @trip.lodging
    fill_in "Meals", with: @trip.meals
    fill_in "Start date", with: @trip.start_date
    fill_in "Title", with: @trip.title
    fill_in "Transportation", with: @trip.transportation
    click_on "Update Trip"

    assert_text "Trip was successfully updated"
    click_on "Back"
  end

  test "destroying a Trip" do
    visit trips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trip was successfully destroyed"
  end
end
