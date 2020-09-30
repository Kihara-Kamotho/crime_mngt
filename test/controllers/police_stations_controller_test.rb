require 'test_helper'

class PoliceStationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @police_station = police_stations(:one)
  end

  test "should get index" do
    get police_stations_url
    assert_response :success
  end

  test "should get new" do
    get new_police_station_url
    assert_response :success
  end

  test "should create police_station" do
    assert_difference('PoliceStation.count') do
      post police_stations_url, params: { police_station: { location: @police_station.location, name: @police_station.name, tel: @police_station.tel } }
    end

    assert_redirected_to police_station_url(PoliceStation.last)
  end

  test "should show police_station" do
    get police_station_url(@police_station)
    assert_response :success
  end

  test "should get edit" do
    get edit_police_station_url(@police_station)
    assert_response :success
  end

  test "should update police_station" do
    patch police_station_url(@police_station), params: { police_station: { location: @police_station.location, name: @police_station.name, tel: @police_station.tel } }
    assert_redirected_to police_station_url(@police_station)
  end

  test "should destroy police_station" do
    assert_difference('PoliceStation.count', -1) do
      delete police_station_url(@police_station)
    end

    assert_redirected_to police_stations_url
  end
end
