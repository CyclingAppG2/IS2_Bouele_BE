class AddFilesToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :files, :string
  end
end
