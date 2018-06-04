class ChangeColumnEventToBigint < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :start_datetime, :bigint
  end
end
