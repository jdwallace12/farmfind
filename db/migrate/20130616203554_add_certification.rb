class AddCertification < ActiveRecord::Migration
  def up
    add_column :farms, :certification, :string, :null => false
    add_column :farms, :share_price, :string, :null => false
  end

  def down
    remove_column :farms, :certification
    remove_column :farms, :share_price
  end
end
