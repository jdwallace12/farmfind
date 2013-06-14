class AddStateColumn < ActiveRecord::Migration
  def up
    add_column :farms, :state, :string, :null => false
  end

  def down
    remove_column :farms, :state
  end
end
