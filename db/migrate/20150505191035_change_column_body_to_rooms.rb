class ChangeColumnBodyToRooms < ActiveRecord::Migration
  def up
    change_column :rooms, :body, :text
  end
  
  def down
    change_column :rooms, :body, :string
  end
end
