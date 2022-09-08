require "application_system_test_case"

class AssignamentsTest < ApplicationSystemTestCase
  setup do
    @assignament = assignaments(:one)
  end

  test "visiting the index" do
    visit assignaments_url
    assert_selector "h1", text: "Assignaments"
  end

  test "should create assignament" do
    visit assignaments_url
    click_on "New assignament"

    fill_in "Address", with: @assignament.address
    fill_in "Color", with: @assignament.color
    fill_in "Comment", with: @assignament.comment
    check "Deductible" if @assignament.deductible
    fill_in "Email", with: @assignament.email
    check "Insurance aproval" if @assignament.insurance_aproval
    fill_in "Make", with: @assignament.make
    fill_in "Model", with: @assignament.model
    fill_in "Owner name", with: @assignament.owner_name
    fill_in "Phone number", with: @assignament.phone_number
    fill_in "Plate", with: @assignament.plate
    fill_in "Po", with: @assignament.po
    fill_in "Status", with: @assignament.status_id
    fill_in "Vin number", with: @assignament.vin_number
    fill_in "Year", with: @assignament.year
    click_on "Create Assignament"

    assert_text "Assignament was successfully created"
    click_on "Back"
  end

  test "should update Assignament" do
    visit assignament_url(@assignament)
    click_on "Edit this assignament", match: :first

    fill_in "Address", with: @assignament.address
    fill_in "Color", with: @assignament.color
    fill_in "Comment", with: @assignament.comment
    check "Deductible" if @assignament.deductible
    fill_in "Email", with: @assignament.email
    check "Insurance aproval" if @assignament.insurance_aproval
    fill_in "Make", with: @assignament.make
    fill_in "Model", with: @assignament.model
    fill_in "Owner name", with: @assignament.owner_name
    fill_in "Phone number", with: @assignament.phone_number
    fill_in "Plate", with: @assignament.plate
    fill_in "Po", with: @assignament.po
    fill_in "Status", with: @assignament.status_id
    fill_in "Vin number", with: @assignament.vin_number
    fill_in "Year", with: @assignament.year
    click_on "Update Assignament"

    assert_text "Assignament was successfully updated"
    click_on "Back"
  end

  test "should destroy Assignament" do
    visit assignament_url(@assignament)
    click_on "Destroy this assignament", match: :first

    assert_text "Assignament was successfully destroyed"
  end
end
