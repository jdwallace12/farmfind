class DeleteContactInfo < ActiveRecord::Migration
  def up
    remove_column :farms, :contact_info
  end

  def down
    add_column :farms, :contact_info, :string, :null => false
  end
end
