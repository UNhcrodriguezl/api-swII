class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :theme
      t.string :capacity

      t.timestamps
    end
  end
end
