class CreateSubforums < ActiveRecord::Migration[5.1]
  def change
    create_table :subforums do |t|
      t.string :name
      t.string :description
      t.integer :admin_id

      t.timestamps
    end

    add_index :subforums, :admin_id
    add_foreign_key :subforums, :admins
  end
end
