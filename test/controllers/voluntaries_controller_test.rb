require 'test_helper'

class VoluntariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @voluntary = voluntaries(:one)
  end

  test "should get index" do
    get voluntaries_url, as: :json
    assert_response :success
  end

  test "should create voluntary" do
    assert_difference('Voluntary.count') do
      post voluntaries_url, params: { voluntary: { birthday: @voluntary.birthday, cellphone: @voluntary.cellphone, city: @voluntary.city, gender: @voluntary.gender, photo: @voluntary.photo, score: @voluntary.score, themesinterest: @voluntary.themesinterest } }, as: :json
    end

    assert_response 201
  end

  test "should show voluntary" do
    get voluntary_url(@voluntary), as: :json
    assert_response :success
  end

  test "should update voluntary" do
    patch voluntary_url(@voluntary), params: { voluntary: { birthday: @voluntary.birthday, cellphone: @voluntary.cellphone, city: @voluntary.city, gender: @voluntary.gender, photo: @voluntary.photo, score: @voluntary.score, themesinterest: @voluntary.themesinterest } }, as: :json
    assert_response 200
  end

  test "should destroy voluntary" do
    assert_difference('Voluntary.count', -1) do
      delete voluntary_url(@voluntary), as: :json
    end

    assert_response 204
  end
end
