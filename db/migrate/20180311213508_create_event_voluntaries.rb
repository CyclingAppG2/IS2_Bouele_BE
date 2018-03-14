class CreateEventVoluntaries < ActiveRecord::Migration[5.1]
  def change
    create_table :event_voluntaries do |t|
      t.integer :scorevoluntary
      t.integer :scoreorganization
      t.string :commentsvoluntary
      t.string :commentsorganization

      t.timestamps
    end
  end
end
