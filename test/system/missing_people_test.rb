require "application_system_test_case"

class MissingPeopleTest < ApplicationSystemTestCase
  setup do
    @missing_person = missing_people(:one)
  end

  test "visiting the index" do
    visit missing_people_url
    assert_selector "h1", text: "Missing People"
  end

  test "creating a Missing person" do
    visit missing_people_url
    click_on "New Missing Person"

    fill_in "Contacts", with: @missing_person.contacts
    fill_in "Date missing", with: @missing_person.date_missing
    fill_in "Gender", with: @missing_person.gender
    fill_in "Height", with: @missing_person.height
    fill_in "Name", with: @missing_person.name
    fill_in "Place last seen", with: @missing_person.place_last_seen
    fill_in "Skin color", with: @missing_person.skin_color
    fill_in "Ward", with: @missing_person.ward
    click_on "Create Missing person"

    assert_text "Missing person was successfully created"
    click_on "Back"
  end

  test "updating a Missing person" do
    visit missing_people_url
    click_on "Edit", match: :first

    fill_in "Contacts", with: @missing_person.contacts
    fill_in "Date missing", with: @missing_person.date_missing
    fill_in "Gender", with: @missing_person.gender
    fill_in "Height", with: @missing_person.height
    fill_in "Name", with: @missing_person.name
    fill_in "Place last seen", with: @missing_person.place_last_seen
    fill_in "Skin color", with: @missing_person.skin_color
    fill_in "Ward", with: @missing_person.ward
    click_on "Update Missing person"

    assert_text "Missing person was successfully updated"
    click_on "Back"
  end

  test "destroying a Missing person" do
    visit missing_people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Missing person was successfully destroyed"
  end
end
