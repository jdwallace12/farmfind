class DeleteFarmShare < ActiveRecord::Migration
  def up
    remove_column :farms, :share_price
  end

  def down
    add_column :farms, :share_price, :string
  end
end
