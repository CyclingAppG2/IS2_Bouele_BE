class AddEventToForumThreads < ActiveRecord::Migration[5.1]
  def change
    add_reference :forum_threads, :event, foreign_key: true
    add_column :forum_threads, :points, :bigint,  :default => 0, :null => false
    add_column :forum_threads, :img_prev, :string
  end
end
