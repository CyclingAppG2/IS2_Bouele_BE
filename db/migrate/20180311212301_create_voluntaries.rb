class CreateVoluntaries < ActiveRecord::Migration[5.1]
  def change
    create_table :voluntaries do |t|
      t.string :themesinterest
      t.integer :score
      t.date :birthday
      t.string :gender
      t.integer :cellphone
      t.string :city

      t.timestamps
    end
  end
end
