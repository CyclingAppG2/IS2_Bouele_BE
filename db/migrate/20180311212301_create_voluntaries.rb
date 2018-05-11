class CreateVoluntaries < ActiveRecord::Migration[5.1]
  def change
    create_table :voluntaries do |t|
      t.integer :voluntary_score
      t.date :birthday
      t.string :gender
      t.bigint :cellphone

      t.timestamps
    end
  end
end
