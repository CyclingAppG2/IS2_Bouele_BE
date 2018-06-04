class CreateThemeInterests < ActiveRecord::Migration[5.1]
  def change
    create_table :theme_interests do |t|
      t.string :themesinterest

      t.timestamps
    end

  end
end
