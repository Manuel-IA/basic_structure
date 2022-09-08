class CreateJoinTableUserInsurance < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :insurances do |t|
      t.index [:user_id, :insurance_id], unique: true
      # t.index [:insurance_id, :user_id]
    end
  end
end
