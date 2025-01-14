require "application_system_test_case"

class MaintenanceReasonsTest < ApplicationSystemTestCase
  setup do
    @maintenance_reason = maintenance_reasons(:one)
  end

  test "visiting the index" do
    visit maintenance_reasons_url
    assert_selector "h1", text: "Maintenance reasons"
  end

  test "should create maintenance reason" do
    visit maintenance_reasons_url
    click_on "New maintenance reason"

    fill_in "Name", with: @maintenance_reason.name
    click_on "Create Maintenance reason"

    assert_text "Maintenance reason was successfully created"
    click_on "Back"
  end

  test "should update Maintenance reason" do
    visit maintenance_reason_url(@maintenance_reason)
    click_on "Edit this maintenance reason", match: :first

    fill_in "Name", with: @maintenance_reason.name
    click_on "Update Maintenance reason"

    assert_text "Maintenance reason was successfully updated"
    click_on "Back"
  end

  test "should destroy Maintenance reason" do
    visit maintenance_reason_url(@maintenance_reason)
    click_on "Destroy this maintenance reason", match: :first

    assert_text "Maintenance reason was successfully destroyed"
  end
end
