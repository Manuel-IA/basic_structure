require "test_helper"

class Admin::InsurancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_insurance = admin_insurances(:one)
  end

  test "should get index" do
    get admin_insurances_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_insurance_url
    assert_response :success
  end

  test "should create admin_insurance" do
    assert_difference("Admin::Insurance.count") do
      post admin_insurances_url, params: { admin_insurance: { color: @admin_insurance.color, contact_name: @admin_insurance.contact_name, email: @admin_insurance.email, name: @admin_insurance.name } }
    end

    assert_redirected_to admin_insurance_url(Admin::Insurance.last)
  end

  test "should show admin_insurance" do
    get admin_insurance_url(@admin_insurance)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_insurance_url(@admin_insurance)
    assert_response :success
  end

  test "should update admin_insurance" do
    patch admin_insurance_url(@admin_insurance), params: { admin_insurance: { color: @admin_insurance.color, contact_name: @admin_insurance.contact_name, email: @admin_insurance.email, name: @admin_insurance.name } }
    assert_redirected_to admin_insurance_url(@admin_insurance)
  end

  test "should destroy admin_insurance" do
    assert_difference("Admin::Insurance.count", -1) do
      delete admin_insurance_url(@admin_insurance)
    end

    assert_redirected_to admin_insurances_url
  end
end
