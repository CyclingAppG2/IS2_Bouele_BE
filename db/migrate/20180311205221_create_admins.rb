class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.integer :hoursperweek

      t.timestamps
    end
  end
end
