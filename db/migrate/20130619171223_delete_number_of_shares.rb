class DeleteNumberOfShares < ActiveRecord::Migration
  def up
    remove_column :farms, :number_of_shares
  end

  def down
    add_column :farms, :number_of_shares, :integer
  end
end
