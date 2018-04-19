class CreateContactData < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_data do |t|
      t.string :email
      t.text :body
      t.string :name
      t.string :city
      t.bigint :phone
      t.references :type_contact, foreign_key: true

      t.timestamps
    end
  end
end
