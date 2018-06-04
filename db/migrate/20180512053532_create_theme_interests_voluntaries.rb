class CreateThemeInterestsVoluntaries < ActiveRecord::Migration[5.1]
  def change
    create_table :theme_interests_voluntaries do |t|
      t.references :theme_interest, foreign_key: true
      t.references :voluntary, foreign_key: true

      t.timestamps
    end
  end
end
