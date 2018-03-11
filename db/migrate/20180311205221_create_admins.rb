class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.int :hoursperweek
      t.image :photo

      t.timestamps
    end
  end
end
