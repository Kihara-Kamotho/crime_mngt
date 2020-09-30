require 'test_helper'

class StolenPropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stolen_property = stolen_properties(:one)
  end

  test "should get index" do
    get stolen_properties_url
    assert_response :success
  end

  test "should get new" do
    get new_stolen_property_url
    assert_response :success
  end

  test "should create stolen_property" do
    assert_difference('StolenProperty.count') do
      post stolen_properties_url, params: { stolen_property: { identification_number: @stolen_property.identification_number, owner_name: @stolen_property.owner_name, place_last_seen: @stolen_property.place_last_seen, property_description: @stolen_property.property_description, property_name: @stolen_property.property_name } }
    end

    assert_redirected_to stolen_property_url(StolenProperty.last)
  end

  test "should show stolen_property" do
    get stolen_property_url(@stolen_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_stolen_property_url(@stolen_property)
    assert_response :success
  end

  test "should update stolen_property" do
    patch stolen_property_url(@stolen_property), params: { stolen_property: { identification_number: @stolen_property.identification_number, owner_name: @stolen_property.owner_name, place_last_seen: @stolen_property.place_last_seen, property_description: @stolen_property.property_description, property_name: @stolen_property.property_name } }
    assert_redirected_to stolen_property_url(@stolen_property)
  end

  test "should destroy stolen_property" do
    assert_difference('StolenProperty.count', -1) do
      delete stolen_property_url(@stolen_property)
    end

    assert_redirected_to stolen_properties_url
  end
end
