class CreatePlus < ActiveRecord::Migration[5.1]
  def change
    create_table :plus do |t|
      t.string :name

      t.timestamps
    end
  end
end
