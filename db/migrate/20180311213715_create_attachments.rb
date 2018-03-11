class CreateAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :attachments do |t|
      t.string :route
      t.string :comments

      t.timestamps
    end
  end
end
