class DeletePhoneNumber < ActiveRecord::Migration
  def up
    remove_column :farms, :phone_number
  end

  def down
    add_column :farms, :phone_number, :integer
  end
end
