require 'test_helper'

class FridgeEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fridge_event = fridge_events(:one)
  end

  test "should get index" do
    get fridge_events_url
    assert_response :success
  end

  test "should get new" do
    get new_fridge_event_url
    assert_response :success
  end

  test "should create fridge_event" do
    assert_difference('FridgeEvent.count') do
      post fridge_events_url, params: { fridge_event: { door_open: @fridge_event.door_open, temperature: @fridge_event.temperature, temperature: @fridge_event.temperature } }
    end

    assert_redirected_to fridge_event_url(FridgeEvent.last)
  end

  test "should show fridge_event" do
    get fridge_event_url(@fridge_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_fridge_event_url(@fridge_event)
    assert_response :success
  end

  test "should update fridge_event" do
    patch fridge_event_url(@fridge_event), params: { fridge_event: { door_open: @fridge_event.door_open, temperature: @fridge_event.temperature, temperature: @fridge_event.temperature } }
    assert_redirected_to fridge_event_url(@fridge_event)
  end

  test "should destroy fridge_event" do
    assert_difference('FridgeEvent.count', -1) do
      delete fridge_event_url(@fridge_event)
    end

    assert_redirected_to fridge_events_url
  end
end
