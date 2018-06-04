require 'test_helper'

class ForumPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @forum_post = forum_posts(:one)
  end

  test "should get index" do
    get forum_posts_url, as: :json
    assert_response :success
  end

  test "should create forum_post" do
    assert_difference('ForumPost.count') do
      post forum_posts_url, params: { forum_post: { createdat: @forum_post.createdat, text: @forum_post.text, updatedat: @forum_post.updatedat } }, as: :json
    end

    assert_response 201
  end

  test "should show forum_post" do
    get forum_post_url(@forum_post), as: :json
    assert_response :success
  end

  test "should update forum_post" do
    patch forum_post_url(@forum_post), params: { forum_post: { createdat: @forum_post.createdat, text: @forum_post.text, updatedat: @forum_post.updatedat } }, as: :json
    assert_response 200
  end

  test "should destroy forum_post" do
    assert_difference('ForumPost.count', -1) do
      delete forum_post_url(@forum_post), as: :json
    end

    assert_response 204
  end
end
