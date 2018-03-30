class CreateAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :attachments do |t|
      t.string :route
      t.string :comments
      t.integer :event_id
      t.integer :forum_thread_id
      t.integer :forum_post_id

      t.timestamps
    end

    add_index :attachments, :event_id
    add_index :attachments, :forum_thread_id
    add_index :attachments, :forum_post_id
  end
end
