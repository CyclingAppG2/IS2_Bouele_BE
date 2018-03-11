require 'test_helper'

class ReasonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reason = reasons(:one)
  end

  test "should get index" do
    get reasons_url, as: :json
    assert_response :success
  end

  test "should create reason" do
    assert_difference('Reason.count') do
      post reasons_url, params: { reason: { name: @reason.name } }, as: :json
    end

    assert_response 201
  end

  test "should show reason" do
    get reason_url(@reason), as: :json
    assert_response :success
  end

  test "should update reason" do
    patch reason_url(@reason), params: { reason: { name: @reason.name } }, as: :json
    assert_response 200
  end

  test "should destroy reason" do
    assert_difference('Reason.count', -1) do
      delete reason_url(@reason), as: :json
    end

    assert_response 204
  end
end
