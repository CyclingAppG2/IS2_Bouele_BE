class AddTitleToForumThreads < ActiveRecord::Migration[5.1]
  def change
    add_column :forum_threads, :title, :string
  end
end
