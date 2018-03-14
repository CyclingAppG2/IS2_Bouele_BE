class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :locations
      t.integer :duration
      t.string :datetime
      t.string :plus

      t.timestamps
    end
  end
end
