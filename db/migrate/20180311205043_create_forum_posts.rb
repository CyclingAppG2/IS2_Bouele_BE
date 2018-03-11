class CreateForumPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :forum_posts do |t|
      t.string :text
      t.string :createdat
      t.string :updatedat

      t.timestamps
    end
  end
end
