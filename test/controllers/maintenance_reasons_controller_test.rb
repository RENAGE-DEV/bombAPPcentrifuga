require "test_helper"

class MaintenanceReasonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maintenance_reason = maintenance_reasons(:one)
  end

  test "should get index" do
    get maintenance_reasons_url
    assert_response :success
  end

  test "should get new" do
    get new_maintenance_reason_url
    assert_response :success
  end

  test "should create maintenance_reason" do
    assert_difference("MaintenanceReason.count") do
      post maintenance_reasons_url, params: { maintenance_reason: { name: @maintenance_reason.name } }
    end

    assert_redirected_to maintenance_reason_url(MaintenanceReason.last)
  end

  test "should show maintenance_reason" do
    get maintenance_reason_url(@maintenance_reason)
    assert_response :success
  end

  test "should get edit" do
    get edit_maintenance_reason_url(@maintenance_reason)
    assert_response :success
  end

  test "should update maintenance_reason" do
    patch maintenance_reason_url(@maintenance_reason), params: { maintenance_reason: { name: @maintenance_reason.name } }
    assert_redirected_to maintenance_reason_url(@maintenance_reason)
  end

  test "should destroy maintenance_reason" do
    assert_difference("MaintenanceReason.count", -1) do
      delete maintenance_reason_url(@maintenance_reason)
    end

    assert_redirected_to maintenance_reasons_url
  end
end
