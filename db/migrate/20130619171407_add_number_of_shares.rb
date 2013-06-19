class AddNumberOfShares < ActiveRecord::Migration
  def up
    add_column :farms, :number_of_shares, :string, :null => false
  end

  def down
    remove_column :farms, :number_of_shares
  end
end
