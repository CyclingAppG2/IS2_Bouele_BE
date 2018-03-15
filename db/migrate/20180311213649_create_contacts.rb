class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer :cellphone
      t.integer :location_id

      t.timestamps
    end

    add_index :contacts, :location_id
    add_foreign_key :contacts, :locations
  end
end
