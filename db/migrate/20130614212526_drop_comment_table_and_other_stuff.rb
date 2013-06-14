class DropCommentTableAndOtherStuff < ActiveRecord::Migration
  def up
    drop_table :comments
    drop_table :farm_ownerships
  end

  def down
    create_table :comments
    create_table :farm_ownerships
  end
end
