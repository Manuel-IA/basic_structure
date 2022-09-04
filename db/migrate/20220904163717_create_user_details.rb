class CreateUserDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :user_details do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :role_id
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.text :additional_info
      t.integer :status_id

      t.timestamps
    end
    add_index :user_details, :role_id
    add_index :user_details, :status_id
  end
end
