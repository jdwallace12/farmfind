class AddLatAndLongToFarms < ActiveRecord::Migration
  def up
    add_column :farms, :latitude, :float
    add_column :farms, :longitude, :float
  end

  def down
    remove_column :farms, :latitude
    remove_column :farms, :longitude
  end
end
