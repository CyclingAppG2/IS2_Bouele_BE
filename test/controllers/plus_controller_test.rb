require 'test_helper'

class PlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plu = plus(:one)
  end

  test "should get index" do
    get plus_url, as: :json
    assert_response :success
  end

  test "should create plu" do
    assert_difference('Plu.count') do
      post plus_url, params: { plu: { name: @plu.name } }, as: :json
    end

    assert_response 201
  end

  test "should show plu" do
    get plu_url(@plu), as: :json
    assert_response :success
  end

  test "should update plu" do
    patch plu_url(@plu), params: { plu: { name: @plu.name } }, as: :json
    assert_response 200
  end

  test "should destroy plu" do
    assert_difference('Plu.count', -1) do
      delete plu_url(@plu), as: :json
    end

    assert_response 204
  end
end
