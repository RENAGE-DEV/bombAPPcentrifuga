require "application_system_test_case"

class PumpsTest < ApplicationSystemTestCase
  setup do
    @pump = pumps(:one)
  end

  test "visiting the index" do
    visit pumps_url
    assert_selector "h1", text: "Pumps"
  end

  test "should create pump" do
    visit pumps_url
    click_on "New pump"

    fill_in "Client", with: @pump.client_id
    fill_in "Length", with: @pump.length
    fill_in "Material", with: @pump.material
    fill_in "Model", with: @pump.model
    fill_in "Name", with: @pump.name
    click_on "Create Pump"

    assert_text "Pump was successfully created"
    click_on "Back"
  end

  test "should update Pump" do
    visit pump_url(@pump)
    click_on "Edit this pump", match: :first

    fill_in "Client", with: @pump.client_id
    fill_in "Length", with: @pump.length
    fill_in "Material", with: @pump.material
    fill_in "Model", with: @pump.model
    fill_in "Name", with: @pump.name
    click_on "Update Pump"

    assert_text "Pump was successfully updated"
    click_on "Back"
  end

  test "should destroy Pump" do
    visit pump_url(@pump)
    click_on "Destroy this pump", match: :first

    assert_text "Pump was successfully destroyed"
  end
end
