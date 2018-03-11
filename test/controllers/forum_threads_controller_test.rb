require 'test_helper'

class ForumThreadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @forum_thread = forum_threads(:one)
  end

  test "should get index" do
    get forum_threads_url, as: :json
    assert_response :success
  end

  test "should create forum_thread" do
    assert_difference('ForumThread.count') do
      post forum_threads_url, params: { forum_thread: { createdat: @forum_thread.createdat, images: @forum_thread.images, text: @forum_thread.text, updatedat: @forum_thread.updatedat } }, as: :json
    end

    assert_response 201
  end

  test "should show forum_thread" do
    get forum_thread_url(@forum_thread), as: :json
    assert_response :success
  end

  test "should update forum_thread" do
    patch forum_thread_url(@forum_thread), params: { forum_thread: { createdat: @forum_thread.createdat, images: @forum_thread.images, text: @forum_thread.text, updatedat: @forum_thread.updatedat } }, as: :json
    assert_response 200
  end

  test "should destroy forum_thread" do
    assert_difference('ForumThread.count', -1) do
      delete forum_thread_url(@forum_thread), as: :json
    end

    assert_response 204
  end
end
