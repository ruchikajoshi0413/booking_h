require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "should create profile" do
    visit profiles_url
    click_on "New profile"

    fill_in "Address", with: @profile.address
    fill_in "Apartment", with: @profile.apartment
    fill_in "City", with: @profile.city
    fill_in "Country", with: @profile.country
    fill_in "Date of birth", with: @profile.date_of_birth
    fill_in "Floor", with: @profile.floor
    fill_in "Name", with: @profile.name
    fill_in "Phone number", with: @profile.phone_number
    fill_in "Postal code", with: @profile.postal_code
    fill_in "State", with: @profile.state
    fill_in "Street", with: @profile.street
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "should update Profile" do
    visit profile_url(@profile)
    click_on "Edit this profile", match: :first

    fill_in "Address", with: @profile.address
    fill_in "Apartment", with: @profile.apartment
    fill_in "City", with: @profile.city
    fill_in "Country", with: @profile.country
    fill_in "Date of birth", with: @profile.date_of_birth
    fill_in "Floor", with: @profile.floor
    fill_in "Name", with: @profile.name
    fill_in "Phone number", with: @profile.phone_number
    fill_in "Postal code", with: @profile.postal_code
    fill_in "State", with: @profile.state
    fill_in "Street", with: @profile.street
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "should destroy Profile" do
    visit profile_url(@profile)
    click_on "Destroy this profile", match: :first

    assert_text "Profile was successfully destroyed"
  end
end
