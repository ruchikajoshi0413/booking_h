require "test_helper"

class TermsAndConditionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @terms_and_condition = terms_and_conditions(:one)
  end

  test "should get index" do
    get terms_and_conditions_url
    assert_response :success
  end

  test "should get new" do
    get new_terms_and_condition_url
    assert_response :success
  end

  test "should create terms_and_condition" do
    assert_difference("TermsAndCondition.count") do
      post terms_and_conditions_url, params: { terms_and_condition: { content: @terms_and_condition.content, title: @terms_and_condition.title } }
    end

    assert_redirected_to terms_and_condition_url(TermsAndCondition.last)
  end

  test "should show terms_and_condition" do
    get terms_and_condition_url(@terms_and_condition)
    assert_response :success
  end

  test "should get edit" do
    get edit_terms_and_condition_url(@terms_and_condition)
    assert_response :success
  end

  test "should update terms_and_condition" do
    patch terms_and_condition_url(@terms_and_condition), params: { terms_and_condition: { content: @terms_and_condition.content, title: @terms_and_condition.title } }
    assert_redirected_to terms_and_condition_url(@terms_and_condition)
  end

  test "should destroy terms_and_condition" do
    assert_difference("TermsAndCondition.count", -1) do
      delete terms_and_condition_url(@terms_and_condition)
    end

    assert_redirected_to terms_and_conditions_url
  end
end
