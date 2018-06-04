class CreateMinicipalities < ActiveRecord::Migration[5.1]
  def change
    create_table :minicipalities do |t|
      t.string :name
      t.integer :department_id

      t.timestamps
    end

    add_index :minicipalities, :department_id
    add_foreign_key :minicipalities, :departments

  end
end
