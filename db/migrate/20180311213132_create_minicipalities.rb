class CreateMinicipalities < ActiveRecord::Migration[5.1]
  def change
    create_table :minicipalities do |t|
      t.string :name

      t.timestamps
    end
  end
end
