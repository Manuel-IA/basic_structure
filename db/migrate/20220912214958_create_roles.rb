class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.integer :role_type_id
      t.string :name
      t.string :acronym
      t.integer :status_id

      t.timestamps
    end
    add_index :roles, :role_type_id
    add_index :roles, :status_id
  end
end
