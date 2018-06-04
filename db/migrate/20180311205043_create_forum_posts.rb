class CreateForumPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :forum_posts do |t|
      t.string :text
      t.integer :user_id
      t.integer :forum_thread_id

      t.timestamps
    end

    add_index :forum_posts, :user_id
    add_foreign_key :forum_posts, :users

    add_index :forum_posts, :forum_thread_id
    add_foreign_key :forum_posts, :forum_threads
  end
end
