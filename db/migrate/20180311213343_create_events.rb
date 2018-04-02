class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.integer :duration
      t.string :plus
      t.integer :organization_id

      t.timestamps
    end

    add_index :events, :organization_id
    add_foreign_key :events, :organizations
  end
end
