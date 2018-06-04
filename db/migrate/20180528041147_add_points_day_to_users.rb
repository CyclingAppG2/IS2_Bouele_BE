class AddPointsDayToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :points_day, :integer, :default => 0, :null => false
  end
end
