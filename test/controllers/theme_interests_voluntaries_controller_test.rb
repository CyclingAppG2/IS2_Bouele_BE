require 'test_helper'

class ThemeInterestsVoluntariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @theme_interests_voluntary = theme_interests_voluntaries(:one)
  end

  test "should get index" do
    get theme_interests_voluntaries_url, as: :json
    assert_response :success
  end

  test "should create theme_interests_voluntary" do
    assert_difference('ThemeInterestsVoluntary.count') do
      post theme_interests_voluntaries_url, params: { theme_interests_voluntary: { theme_interest_id: @theme_interests_voluntary.theme_interest_id, voluntary_id: @theme_interests_voluntary.voluntary_id } }, as: :json
    end

    assert_response 201
  end

  test "should show theme_interests_voluntary" do
    get theme_interests_voluntary_url(@theme_interests_voluntary), as: :json
    assert_response :success
  end

  test "should update theme_interests_voluntary" do
    patch theme_interests_voluntary_url(@theme_interests_voluntary), params: { theme_interests_voluntary: { theme_interest_id: @theme_interests_voluntary.theme_interest_id, voluntary_id: @theme_interests_voluntary.voluntary_id } }, as: :json
    assert_response 200
  end

  test "should destroy theme_interests_voluntary" do
    assert_difference('ThemeInterestsVoluntary.count', -1) do
      delete theme_interests_voluntary_url(@theme_interests_voluntary), as: :json
    end

    assert_response 204
  end
end
