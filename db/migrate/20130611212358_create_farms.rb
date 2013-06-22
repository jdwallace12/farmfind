class CreateFarms < ActiveRecord::Migration
  def change
    create_table :farms do |t|
      t.string :name, :null => false
      t.string :address, :null => false 
      t.string :city, :null => false
      t.string :number_of_shares, :null => false
      t.text :share_description, :null => false
      t.text :farm_description, :null => false
      t.string :state, :null => false
      t.string :phone_number
      t.integer :user_id, :null => false
      t.string :certification, :null => false
      t.string :share_price, :null => false
      t.string :website
      t.timestamps
    end
  end
end
