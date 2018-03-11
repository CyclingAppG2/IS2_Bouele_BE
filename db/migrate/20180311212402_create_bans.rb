class CreateBans < ActiveRecord::Migration[5.1]
  def change
    create_table :bans do |t|
      t.string :log
      t.string :reason
      t.string :starttime
      t.string :endtime

      t.timestamps
    end
  end
end
