class CreateMissionsUsersJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_table :missions_users, id: false do |t|
      t.integer :mission_id
      t.integer :user_id
    end
    add_index :missions_users, :mission_id
    add_index :missions_users, :user_id
  end
end