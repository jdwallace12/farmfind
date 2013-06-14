class CreateFarmOwnerships < ActiveRecord::Migration
  def change
    create_table :farm_ownerships do |t|

      t.timestamps
    end
  end
end
