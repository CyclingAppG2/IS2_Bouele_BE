class CreateThemeInterests < ActiveRecord::Migration[5.1]
  def change
    create_table :theme_interests do |t|
      t.string :themesinterest
      t.integer :voluntary_id

      t.timestamps
    end

    add_index :theme_interests, :voluntary_id
    add_foreign_key :theme_interests, :voluntaries
  end
end
