class CreateFarms < ActiveRecord::Migration
  def change
    create_table :farms do |t|
      t.string :name, :null => false
      t.string :adress, :null => false 
      t.string :city, :null => false
      t.integer :zipcode, :null => false
      t.string :contact_info, :null => false
      t.integer :number_of_shares, :null => false
      t.text :share_description, :null => false
      t.text :farm_description, :null => false
      t.integer :phone_number

      t.timestamps
    end
  end
end
