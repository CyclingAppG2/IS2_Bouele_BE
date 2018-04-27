class CreateEventVoluntaries < ActiveRecord::Migration[5.1]
  def change
    create_table :event_voluntaries do |t|
      t.integer :scorevoluntary
      t.integer :scoreorganization
      t.string :commentsvoluntary
      t.string :commentsorganization
      t.integer :event_id
      t.integer :voluntary_id

      t.timestamps
    end

    #add_index :event_voluntaries, :event_id
    #add_foreign_key :event_voluntaries, :events

    #add_index :event_voluntaries, :voluntary_id
    #add_foreign_key :event_voluntaries, :voluntaries
  end
end
