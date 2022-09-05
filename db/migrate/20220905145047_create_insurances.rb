class CreateInsurances < ActiveRecord::Migration[7.0]
  def change
    create_table :insurances do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :contact_name, null: false
      t.string :color, null: false

      t.timestamps
    end
  end
end
