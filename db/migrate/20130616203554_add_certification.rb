class AddCertification < ActiveRecord::Migration
  def up
    add_column :farms, :certification, :string, :null => false
  end

  def down
    remove_column :farms, :certification
  end
end
