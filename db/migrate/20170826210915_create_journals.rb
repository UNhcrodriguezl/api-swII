class CreateJournals < ActiveRecord::Migration[5.1]
  def change
    create_table :journals do |t|
      t.string :editorial
      t.string :theme
      t.string :year

      t.timestamps
    end
  end
end
