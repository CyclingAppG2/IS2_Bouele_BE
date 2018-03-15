class CreateReasons < ActiveRecord::Migration[5.1]
  def change
    create_table :reasons do |t|
      t.string :name
      t.integer :ban_id

      t.timestamps
    end

    add_index :reasons, :ban_id
    add_foreign_key :reasons, :bans
  end
end
