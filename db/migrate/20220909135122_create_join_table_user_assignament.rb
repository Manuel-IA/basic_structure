class CreateJoinTableUserAssignament < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :assignaments do |t|
      # t.index [:user_id, :assignament_id]
      # t.index [:assignament_id, :user_id]
    end
  end
end
