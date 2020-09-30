require "application_system_test_case"

class ReportsTest < ApplicationSystemTestCase
  setup do
    @report = reports(:one)
  end

  test "visiting the index" do
    visit reports_url
    assert_selector "h1", text: "Reports"
  end

  test "creating a Report" do
    visit reports_url
    click_on "New Report"

    fill_in "Crime", with: @report.crime
    fill_in "Crime description", with: @report.crime_description
    fill_in "Crime scene", with: @report.crime_scene
    fill_in "Crime suspects", with: @report.crime_suspects
    fill_in "Victim", with: @report.victim
    click_on "Create Report"

    assert_text "Report was successfully created"
    click_on "Back"
  end

  test "updating a Report" do
    visit reports_url
    click_on "Edit", match: :first

    fill_in "Crime", with: @report.crime
    fill_in "Crime description", with: @report.crime_description
    fill_in "Crime scene", with: @report.crime_scene
    fill_in "Crime suspects", with: @report.crime_suspects
    fill_in "Victim", with: @report.victim
    click_on "Update Report"

    assert_text "Report was successfully updated"
    click_on "Back"
  end

  test "destroying a Report" do
    visit reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Report was successfully destroyed"
  end
end
