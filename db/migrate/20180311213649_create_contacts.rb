class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.int :cellphone

      t.timestamps
    end
  end
end
