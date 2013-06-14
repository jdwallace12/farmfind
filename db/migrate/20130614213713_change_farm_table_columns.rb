class ChangeFarmTableColumns < ActiveRecord::Migration
  def up
    remove_column :farms, :zipcode
  end

  def down
    add_column :farms, :zipcode, :integer
  end
end
