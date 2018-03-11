require 'test_helper'

class EventVoluntariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_voluntary = event_voluntaries(:one)
  end

  test "should get index" do
    get event_voluntaries_url, as: :json
    assert_response :success
  end

  test "should create event_voluntary" do
    assert_difference('EventVoluntary.count') do
      post event_voluntaries_url, params: { event_voluntary: { commentsorganization: @event_voluntary.commentsorganization, commentsvoluntary: @event_voluntary.commentsvoluntary, scoreorganization: @event_voluntary.scoreorganization, scorevoluntary: @event_voluntary.scorevoluntary } }, as: :json
    end

    assert_response 201
  end

  test "should show event_voluntary" do
    get event_voluntary_url(@event_voluntary), as: :json
    assert_response :success
  end

  test "should update event_voluntary" do
    patch event_voluntary_url(@event_voluntary), params: { event_voluntary: { commentsorganization: @event_voluntary.commentsorganization, commentsvoluntary: @event_voluntary.commentsvoluntary, scoreorganization: @event_voluntary.scoreorganization, scorevoluntary: @event_voluntary.scorevoluntary } }, as: :json
    assert_response 200
  end

  test "should destroy event_voluntary" do
    assert_difference('EventVoluntary.count', -1) do
      delete event_voluntary_url(@event_voluntary), as: :json
    end

    assert_response 204
  end
end
