require 'test_helper'

class WantedPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wanted_person = wanted_people(:one)
  end

  test "should get index" do
    get wanted_people_url
    assert_response :success
  end

  test "should get new" do
    get new_wanted_person_url
    assert_response :success
  end

  test "should create wanted_person" do
    assert_difference('WantedPerson.count') do
      post wanted_people_url, params: { wanted_person: { name: @wanted_person.name } }
    end

    assert_redirected_to wanted_person_url(WantedPerson.last)
  end

  test "should show wanted_person" do
    get wanted_person_url(@wanted_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_wanted_person_url(@wanted_person)
    assert_response :success
  end

  test "should update wanted_person" do
    patch wanted_person_url(@wanted_person), params: { wanted_person: { name: @wanted_person.name } }
    assert_redirected_to wanted_person_url(@wanted_person)
  end

  test "should destroy wanted_person" do
    assert_difference('WantedPerson.count', -1) do
      delete wanted_person_url(@wanted_person)
    end

    assert_redirected_to wanted_people_url
  end
end
