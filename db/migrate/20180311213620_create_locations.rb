class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.float :longitude
      t.float :latitude
      t.integer :event_id

      t.timestamps
    end

    add_index :locations, :event_id
    add_foreign_key :locations, :events
  end
end
