class CreatePlus < ActiveRecord::Migration[5.1]
  def change
    create_table :plus do |t|
      t.string :name
      t.integer :event_id

      t.timestamps
    end

    add_index :plus, :event_id
    add_foreign_key :plus, :events
  end
end
