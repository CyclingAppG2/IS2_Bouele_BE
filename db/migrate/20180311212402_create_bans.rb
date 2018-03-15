class CreateBans < ActiveRecord::Migration[5.1]
  def change
    create_table :bans do |t|
      t.string :log
      t.string :reason
      t.DateTime :starttime
      t.DateTime :endtime
      t.integer :user_id
      t.integer :admin_id

      t.timestamps
    end

    add_index :bans, :user_id
    add_foreign_key :bans, :users

    add_index :bans, :admin_id
    add_foreign_key :bans, :admins
  end
end
