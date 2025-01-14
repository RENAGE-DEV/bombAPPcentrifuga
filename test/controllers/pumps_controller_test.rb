require "test_helper"

class PumpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pump = pumps(:one)
  end

  test "should get index" do
    get pumps_url
    assert_response :success
  end

  test "should get new" do
    get new_pump_url
    assert_response :success
  end

  test "should create pump" do
    assert_difference("Pump.count") do
      post pumps_url, params: { pump: { client_id: @pump.client_id, length: @pump.length, material: @pump.material, model: @pump.model, name: @pump.name } }
    end

    assert_redirected_to pump_url(Pump.last)
  end

  test "should show pump" do
    get pump_url(@pump)
    assert_response :success
  end

  test "should get edit" do
    get edit_pump_url(@pump)
    assert_response :success
  end

  test "should update pump" do
    patch pump_url(@pump), params: { pump: { client_id: @pump.client_id, length: @pump.length, material: @pump.material, model: @pump.model, name: @pump.name } }
    assert_redirected_to pump_url(@pump)
  end

  test "should destroy pump" do
    assert_difference("Pump.count", -1) do
      delete pump_url(@pump)
    end

    assert_redirected_to pumps_url
  end
end
