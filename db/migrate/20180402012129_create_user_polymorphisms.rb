class CreateUserPolymorphisms < ActiveRecord::Migration[5.1]
  def change
    create_table :user_polymorphisms do |t|
       t.integer :user_id
       t.integer :user_data_id
       t.string :user_data_type
      
       t.timestamps
    end
    add_index :user_polymorphisms, [:user_data_type, :user_data_id]
  end
end
