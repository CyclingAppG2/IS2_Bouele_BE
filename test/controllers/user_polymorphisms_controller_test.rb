require 'test_helper'

class UserPolymorphismsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_polymorphism = user_polymorphisms(:one)
  end

  test "should get index" do
    get user_polymorphisms_url, as: :json
    assert_response :success
  end

  test "should create user_polymorphism" do
    assert_difference('UserPolymorphism.count') do
      post user_polymorphisms_url, params: { user_polymorphism: { user_data_id: @user_polymorphism.user_data_id, user_data_type: @user_polymorphism.user_data_type, user_id: @user_polymorphism.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_polymorphism" do
    get user_polymorphism_url(@user_polymorphism), as: :json
    assert_response :success
  end

  test "should update user_polymorphism" do
    patch user_polymorphism_url(@user_polymorphism), params: { user_polymorphism: { user_data_id: @user_polymorphism.user_data_id, user_data_type: @user_polymorphism.user_data_type, user_id: @user_polymorphism.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_polymorphism" do
    assert_difference('UserPolymorphism.count', -1) do
      delete user_polymorphism_url(@user_polymorphism), as: :json
    end

    assert_response 204
  end
end
