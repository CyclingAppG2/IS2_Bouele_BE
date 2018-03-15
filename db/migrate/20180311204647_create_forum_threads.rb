class CreateForumThreads < ActiveRecord::Migration[5.1]
  def change
    create_table :forum_threads do |t|
      t.string :text
      t.integer :user_id
      t.integer :subforum_id

      t.timestamps
    end

    add_index :forum_threads, :user_id
    add_foreign_key :forum_threads, :users

    add_index :forum_threads, :subforum_id
    add_foreign_key :forum_threads, :subforums
  end
end
