require 'test_helper'

class MissingPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @missing_person = missing_people(:one)
  end

  test "should get index" do
    get missing_people_url
    assert_response :success
  end

  test "should get new" do
    get new_missing_person_url
    assert_response :success
  end

  test "should create missing_person" do
    assert_difference('MissingPerson.count') do
      post missing_people_url, params: { missing_person: { contacts: @missing_person.contacts, date_missing: @missing_person.date_missing, gender: @missing_person.gender, height: @missing_person.height, name: @missing_person.name, place_last_seen: @missing_person.place_last_seen, skin_color: @missing_person.skin_color, ward: @missing_person.ward } }
    end

    assert_redirected_to missing_person_url(MissingPerson.last)
  end

  test "should show missing_person" do
    get missing_person_url(@missing_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_missing_person_url(@missing_person)
    assert_response :success
  end

  test "should update missing_person" do
    patch missing_person_url(@missing_person), params: { missing_person: { contacts: @missing_person.contacts, date_missing: @missing_person.date_missing, gender: @missing_person.gender, height: @missing_person.height, name: @missing_person.name, place_last_seen: @missing_person.place_last_seen, skin_color: @missing_person.skin_color, ward: @missing_person.ward } }
    assert_redirected_to missing_person_url(@missing_person)
  end

  test "should destroy missing_person" do
    assert_difference('MissingPerson.count', -1) do
      delete missing_person_url(@missing_person)
    end

    assert_redirected_to missing_people_url
  end
end
