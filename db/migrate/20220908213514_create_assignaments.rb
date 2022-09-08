class CreateAssignaments < ActiveRecord::Migration[7.0]
  def change
    create_table :assignaments do |t|
      t.string :owner_name, null: false
      t.string :phone_number, null: false
      t.string :email, null: false
      t.string :address
      t.integer :vin_number
      t.integer :po
      t.string :plate
      t.boolean :deductible
      t.boolean :insurance_aproval
      t.string :color
      t.integer :status_id
      t.string :make
      t.string :model
      t.integer :year
      t.text :comment

      t.timestamps
    end
  end
end
