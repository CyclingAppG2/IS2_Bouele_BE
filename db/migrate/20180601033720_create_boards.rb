class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.integer :like
      t.references :user, foreign_key: true
      t.references :forum_post, foreign_key: true

      t.timestamps
    end
  end
end
