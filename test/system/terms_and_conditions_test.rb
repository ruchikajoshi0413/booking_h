require "application_system_test_case"

class TermsAndConditionsTest < ApplicationSystemTestCase
  setup do
    @terms_and_condition = terms_and_conditions(:one)
  end

  test "visiting the index" do
    visit terms_and_conditions_url
    assert_selector "h1", text: "Terms and conditions"
  end

  test "should create terms and condition" do
    visit terms_and_conditions_url
    click_on "New terms and condition"

    fill_in "Content", with: @terms_and_condition.content
    fill_in "Title", with: @terms_and_condition.title
    click_on "Create Terms and condition"

    assert_text "Terms and condition was successfully created"
    click_on "Back"
  end

  test "should update Terms and condition" do
    visit terms_and_condition_url(@terms_and_condition)
    click_on "Edit this terms and condition", match: :first

    fill_in "Content", with: @terms_and_condition.content
    fill_in "Title", with: @terms_and_condition.title
    click_on "Update Terms and condition"

    assert_text "Terms and condition was successfully updated"
    click_on "Back"
  end

  test "should destroy Terms and condition" do
    visit terms_and_condition_url(@terms_and_condition)
    click_on "Destroy this terms and condition", match: :first

    assert_text "Terms and condition was successfully destroyed"
  end
end
