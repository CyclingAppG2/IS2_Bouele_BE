class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.integer :hoursperweek
      t.string :name,		null: false, default: "", unique: true
			t.string :username,	null: false, default: "", unique: true
      t.timestamps
    end
  end
end
