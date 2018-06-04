require 'test_helper'

class ThemeInterestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @theme_interest = theme_interests(:one)
  end

  test "should get index" do
    get theme_interests_url, as: :json
    assert_response :success
  end

  test "should create theme_interest" do
    assert_difference('ThemeInterest.count') do
      post theme_interests_url, params: { theme_interest: { themesinterest: @theme_interest.themesinterest } }, as: :json
    end

    assert_response 201
  end

  test "should show theme_interest" do
    get theme_interest_url(@theme_interest), as: :json
    assert_response :success
  end

  test "should update theme_interest" do
    patch theme_interest_url(@theme_interest), params: { theme_interest: { themesinterest: @theme_interest.themesinterest } }, as: :json
    assert_response 200
  end

  test "should destroy theme_interest" do
    assert_difference('ThemeInterest.count', -1) do
      delete theme_interest_url(@theme_interest), as: :json
    end

    assert_response 204
  end
end
