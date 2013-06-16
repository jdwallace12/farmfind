class AddAddressColumn < ActiveRecord::Migration
  def up
    add_column :farms, :address, :string, :null => false
  end

  def down
    remove_column :farms, :address
  end
end
