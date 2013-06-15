class AddUserToFarm < ActiveRecord::Migration
  def up
    add_column :farms, :user_id, :integer
  end

  def down
    remove_column :farms, :user_id
  end
end
