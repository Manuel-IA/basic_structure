require "application_system_test_case"

class Admin::InsurancesTest < ApplicationSystemTestCase
  setup do
    @admin_insurance = admin_insurances(:one)
  end

  test "visiting the index" do
    visit admin_insurances_url
    assert_selector "h1", text: "Insurances"
  end

  test "should create insurance" do
    visit admin_insurances_url
    click_on "New insurance"

    fill_in "Color", with: @admin_insurance.color
    fill_in "Contact name", with: @admin_insurance.contact_name
    fill_in "Email", with: @admin_insurance.email
    fill_in "Name", with: @admin_insurance.name
    click_on "Create Insurance"

    assert_text "Insurance was successfully created"
    click_on "Back"
  end

  test "should update Insurance" do
    visit admin_insurance_url(@admin_insurance)
    click_on "Edit this insurance", match: :first

    fill_in "Color", with: @admin_insurance.color
    fill_in "Contact name", with: @admin_insurance.contact_name
    fill_in "Email", with: @admin_insurance.email
    fill_in "Name", with: @admin_insurance.name
    click_on "Update Insurance"

    assert_text "Insurance was successfully updated"
    click_on "Back"
  end

  test "should destroy Insurance" do
    visit admin_insurance_url(@admin_insurance)
    click_on "Destroy this insurance", match: :first

    assert_text "Insurance was successfully destroyed"
  end
end
