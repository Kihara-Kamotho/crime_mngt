require "application_system_test_case"

class StolenPropertiesTest < ApplicationSystemTestCase
  setup do
    @stolen_property = stolen_properties(:one)
  end

  test "visiting the index" do
    visit stolen_properties_url
    assert_selector "h1", text: "Stolen Properties"
  end

  test "creating a Stolen property" do
    visit stolen_properties_url
    click_on "New Stolen Property"

    fill_in "Identification number", with: @stolen_property.identification_number
    fill_in "Owner name", with: @stolen_property.owner_name
    fill_in "Place last seen", with: @stolen_property.place_last_seen
    fill_in "Property description", with: @stolen_property.property_description
    fill_in "Property name", with: @stolen_property.property_name
    click_on "Create Stolen property"

    assert_text "Stolen property was successfully created"
    click_on "Back"
  end

  test "updating a Stolen property" do
    visit stolen_properties_url
    click_on "Edit", match: :first

    fill_in "Identification number", with: @stolen_property.identification_number
    fill_in "Owner name", with: @stolen_property.owner_name
    fill_in "Place last seen", with: @stolen_property.place_last_seen
    fill_in "Property description", with: @stolen_property.property_description
    fill_in "Property name", with: @stolen_property.property_name
    click_on "Update Stolen property"

    assert_text "Stolen property was successfully updated"
    click_on "Back"
  end

  test "destroying a Stolen property" do
    visit stolen_properties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stolen property was successfully destroyed"
  end
end
