require 'test_helper'

class BansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ban = bans(:one)
  end

  test "should get index" do
    get bans_url, as: :json
    assert_response :success
  end

  test "should create ban" do
    assert_difference('Ban.count') do
      post bans_url, params: { ban: { endtime: @ban.endtime, log: @ban.log, reason: @ban.reason, starttime: @ban.starttime } }, as: :json
    end

    assert_response 201
  end

  test "should show ban" do
    get ban_url(@ban), as: :json
    assert_response :success
  end

  test "should update ban" do
    patch ban_url(@ban), params: { ban: { endtime: @ban.endtime, log: @ban.log, reason: @ban.reason, starttime: @ban.starttime } }, as: :json
    assert_response 200
  end

  test "should destroy ban" do
    assert_difference('Ban.count', -1) do
      delete ban_url(@ban), as: :json
    end

    assert_response 204
  end
end
