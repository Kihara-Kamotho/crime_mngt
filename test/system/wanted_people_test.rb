require "application_system_test_case"

class WantedPeopleTest < ApplicationSystemTestCase
  setup do
    @wanted_person = wanted_people(:one)
  end

  test "visiting the index" do
    visit wanted_people_url
    assert_selector "h1", text: "Wanted People"
  end

  test "creating a Wanted person" do
    visit wanted_people_url
    click_on "New Wanted Person"

    fill_in "Name", with: @wanted_person.name
    click_on "Create Wanted person"

    assert_text "Wanted person was successfully created"
    click_on "Back"
  end

  test "updating a Wanted person" do
    visit wanted_people_url
    click_on "Edit", match: :first

    fill_in "Name", with: @wanted_person.name
    click_on "Update Wanted person"

    assert_text "Wanted person was successfully updated"
    click_on "Back"
  end

  test "destroying a Wanted person" do
    visit wanted_people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wanted person was successfully destroyed"
  end
end
