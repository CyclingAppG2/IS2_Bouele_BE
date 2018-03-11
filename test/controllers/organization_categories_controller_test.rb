require 'test_helper'

class OrganizationCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization_category = organization_categories(:one)
  end

  test "should get index" do
    get organization_categories_url, as: :json
    assert_response :success
  end

  test "should create organization_category" do
    assert_difference('OrganizationCategory.count') do
      post organization_categories_url, params: { organization_category: { name: @organization_category.name } }, as: :json
    end

    assert_response 201
  end

  test "should show organization_category" do
    get organization_category_url(@organization_category), as: :json
    assert_response :success
  end

  test "should update organization_category" do
    patch organization_category_url(@organization_category), params: { organization_category: { name: @organization_category.name } }, as: :json
    assert_response 200
  end

  test "should destroy organization_category" do
    assert_difference('OrganizationCategory.count', -1) do
      delete organization_category_url(@organization_category), as: :json
    end

    assert_response 204
  end
end
