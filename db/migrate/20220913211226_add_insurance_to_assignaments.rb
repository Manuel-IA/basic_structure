class AddInsuranceToAssignaments < ActiveRecord::Migration[7.0]
  def change
    add_reference :assignaments, :insurance, null: true, foreign_key: true
  end
end
