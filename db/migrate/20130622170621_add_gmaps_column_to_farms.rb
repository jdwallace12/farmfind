class AddGmapsColumnToFarms < ActiveRecord::Migration
  def up
    add_column :farms, :gmaps, :boolean
  end

  def down
    remove_column :farms, :gmaps
  end
end
