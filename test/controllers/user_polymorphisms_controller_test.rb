require 'test_helper'

class UserPolymorphismsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_polymorphism = user_polymorphisms(:one)
  end

  test "should get index" do
    get user_polymorphisms_url
    assert_response :success
  end

  test "should get new" do
    get new_user_polymorphism_url
    assert_response :success
  end

  test "should create user_polymorphism" do
    assert_difference('UserPolymorphism.count') do
      post user_polymorphisms_url, params: { user_polymorphism: {  } }
    end

    assert_redirected_to user_polymorphism_url(UserPolymorphism.last)
  end

  test "should show user_polymorphism" do
    get user_polymorphism_url(@user_polymorphism)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_polymorphism_url(@user_polymorphism)
    assert_response :success
  end

  test "should update user_polymorphism" do
    patch user_polymorphism_url(@user_polymorphism), params: { user_polymorphism: {  } }
    assert_redirected_to user_polymorphism_url(@user_polymorphism)
  end

  test "should destroy user_polymorphism" do
    assert_difference('UserPolymorphism.count', -1) do
      delete user_polymorphism_url(@user_polymorphism)
    end

    assert_redirected_to user_polymorphisms_url
  end
end
