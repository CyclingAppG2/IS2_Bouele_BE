require 'test_helper'

class ThemeInteresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @theme_intere = theme_interes(:one)
  end

  test "should get index" do
    get theme_interes_url, as: :json
    assert_response :success
  end

  test "should create theme_intere" do
    assert_difference('ThemeIntere.count') do
      post theme_interes_url, params: { theme_intere: { themesinterest: @theme_intere.themesinterest } }, as: :json
    end

    assert_response 201
  end

  test "should show theme_intere" do
    get theme_intere_url(@theme_intere), as: :json
    assert_response :success
  end

  test "should update theme_intere" do
    patch theme_intere_url(@theme_intere), params: { theme_intere: { themesinterest: @theme_intere.themesinterest } }, as: :json
    assert_response 200
  end

  test "should destroy theme_intere" do
    assert_difference('ThemeIntere.count', -1) do
      delete theme_intere_url(@theme_intere), as: :json
    end

    assert_response 204
  end
end
