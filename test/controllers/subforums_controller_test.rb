require 'test_helper'

class SubforumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subforum = subforums(:one)
  end

  test "should get index" do
    get subforums_url, as: :json
    assert_response :success
  end

  test "should create subforum" do
    assert_difference('Subforum.count') do
      post subforums_url, params: { subforum: { description: @subforum.description, name: @subforum.name } }, as: :json
    end

    assert_response 201
  end

  test "should show subforum" do
    get subforum_url(@subforum), as: :json
    assert_response :success
  end

  test "should update subforum" do
    patch subforum_url(@subforum), params: { subforum: { description: @subforum.description, name: @subforum.name } }, as: :json
    assert_response 200
  end

  test "should destroy subforum" do
    assert_difference('Subforum.count', -1) do
      delete subforum_url(@subforum), as: :json
    end

    assert_response 204
  end
end
