class Add < ActiveRecord::Migration
  def up
    add_column :farms, :phone_number, :string
    add_column :farms, :website, :string
  end

  def down
    remove_column :farms, :phone_number
    remove_column :farms, :website
  end
end
