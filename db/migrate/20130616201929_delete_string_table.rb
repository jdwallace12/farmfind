class DeleteStringTable < ActiveRecord::Migration
  def up
    remove_column :farms, :string
  end

  def down
    add_column :farms, :string, :string
  end
end
