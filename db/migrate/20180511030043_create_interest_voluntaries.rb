class CreateInterestVoluntaries < ActiveRecord::Migration[5.1]
  def change
    create_table :interest_voluntaries do |t|
      t.references :theme_interes, foreign_key: true
      t.references :voluntary, foreign_key: true

      t.timestamps
    end
  end
end
