class CreateForumThreads < ActiveRecord::Migration[5.1]
  def change
    create_table :forum_threads do |t|
      t.text :body
      t.integer :user_id

      t.timestamps
    end

    add_index :forum_threads, :user_id
    add_foreign_key :forum_threads, :users

   
  end
end
