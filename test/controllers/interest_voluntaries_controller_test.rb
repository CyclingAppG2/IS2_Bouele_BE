require 'test_helper'

class InterestVoluntariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interest_voluntary = interest_voluntaries(:one)
  end

  test "should get index" do
    get interest_voluntaries_url, as: :json
    assert_response :success
  end

  test "should create interest_voluntary" do
    assert_difference('InterestVoluntary.count') do
      post interest_voluntaries_url, params: { interest_voluntary: { theme_interes_id: @interest_voluntary.theme_interes_id, voluntary_id: @interest_voluntary.voluntary_id } }, as: :json
    end

    assert_response 201
  end

  test "should show interest_voluntary" do
    get interest_voluntary_url(@interest_voluntary), as: :json
    assert_response :success
  end

  test "should update interest_voluntary" do
    patch interest_voluntary_url(@interest_voluntary), params: { interest_voluntary: { theme_interes_id: @interest_voluntary.theme_interes_id, voluntary_id: @interest_voluntary.voluntary_id } }, as: :json
    assert_response 200
  end

  test "should destroy interest_voluntary" do
    assert_difference('InterestVoluntary.count', -1) do
      delete interest_voluntary_url(@interest_voluntary), as: :json
    end

    assert_response 204
  end
end
