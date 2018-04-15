class RenameNameToRoomNameForReal < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :name, :string
    add_column :rooms, :capacity, :integer
  end
end
