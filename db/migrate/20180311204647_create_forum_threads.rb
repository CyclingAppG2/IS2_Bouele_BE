class CreateForumThreads < ActiveRecord::Migration[5.1]
  def change
    create_table :forum_threads do |t|
      t.string :text
      t.image :images
      t.string :createdat
      t.string :updatedat

      t.timestamps
    end
  end
end
