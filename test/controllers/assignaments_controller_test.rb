require "test_helper"

class AssignamentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assignament = assignaments(:one)
  end

  test "should get index" do
    get assignaments_url
    assert_response :success
  end

  test "should get new" do
    get new_assignament_url
    assert_response :success
  end

  test "should create assignament" do
    assert_difference("Assignament.count") do
      post assignaments_url, params: { assignament: { address: @assignament.address, color: @assignament.color, comment: @assignament.comment, deductible: @assignament.deductible, email: @assignament.email, insurance_aproval: @assignament.insurance_aproval, make: @assignament.make, model: @assignament.model, owner_name: @assignament.owner_name, phone_number: @assignament.phone_number, plate: @assignament.plate, po: @assignament.po, status_id: @assignament.status_id, vin_number: @assignament.vin_number, year: @assignament.year } }
    end

    assert_redirected_to assignament_url(Assignament.last)
  end

  test "should show assignament" do
    get assignament_url(@assignament)
    assert_response :success
  end

  test "should get edit" do
    get edit_assignament_url(@assignament)
    assert_response :success
  end

  test "should update assignament" do
    patch assignament_url(@assignament), params: { assignament: { address: @assignament.address, color: @assignament.color, comment: @assignament.comment, deductible: @assignament.deductible, email: @assignament.email, insurance_aproval: @assignament.insurance_aproval, make: @assignament.make, model: @assignament.model, owner_name: @assignament.owner_name, phone_number: @assignament.phone_number, plate: @assignament.plate, po: @assignament.po, status_id: @assignament.status_id, vin_number: @assignament.vin_number, year: @assignament.year } }
    assert_redirected_to assignament_url(@assignament)
  end

  test "should destroy assignament" do
    assert_difference("Assignament.count", -1) do
      delete assignament_url(@assignament)
    end

    assert_redirected_to assignaments_url
  end
end
