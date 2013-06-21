class AddCountryFarms < ActiveRecord::Migration
  def up
    add_column :farms, :country, :string, :null => false
  end

  def down
    remove_column :farms, :country
  end
end
