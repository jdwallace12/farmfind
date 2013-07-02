class AddSharePrice < ActiveRecord::Migration
  def up
    add_column :farms, :share_price, :integer, :null => false
  end

  def down
    remove_column :farms, :share_price
  end
end
