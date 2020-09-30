require "application_system_test_case"

class PoliceStationsTest < ApplicationSystemTestCase
  setup do
    @police_station = police_stations(:one)
  end

  test "visiting the index" do
    visit police_stations_url
    assert_selector "h1", text: "Police Stations"
  end

  test "creating a Police station" do
    visit police_stations_url
    click_on "New Police Station"

    fill_in "Location", with: @police_station.location
    fill_in "Name", with: @police_station.name
    fill_in "Tel", with: @police_station.tel
    click_on "Create Police station"

    assert_text "Police station was successfully created"
    click_on "Back"
  end

  test "updating a Police station" do
    visit police_stations_url
    click_on "Edit", match: :first

    fill_in "Location", with: @police_station.location
    fill_in "Name", with: @police_station.name
    fill_in "Tel", with: @police_station.tel
    click_on "Update Police station"

    assert_text "Police station was successfully updated"
    click_on "Back"
  end

  test "destroying a Police station" do
    visit police_stations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Police station was successfully destroyed"
  end
end
