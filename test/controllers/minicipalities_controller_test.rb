require 'test_helper'

class MinicipalitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @minicipality = minicipalities(:one)
  end

  test "should get index" do
    get minicipalities_url, as: :json
    assert_response :success
  end

  test "should create minicipality" do
    assert_difference('Minicipality.count') do
      post minicipalities_url, params: { minicipality: { name: @minicipality.name } }, as: :json
    end

    assert_response 201
  end

  test "should show minicipality" do
    get minicipality_url(@minicipality), as: :json
    assert_response :success
  end

  test "should update minicipality" do
    patch minicipality_url(@minicipality), params: { minicipality: { name: @minicipality.name } }, as: :json
    assert_response 200
  end

  test "should destroy minicipality" do
    assert_difference('Minicipality.count', -1) do
      delete minicipality_url(@minicipality), as: :json
    end

    assert_response 204
  end
end
