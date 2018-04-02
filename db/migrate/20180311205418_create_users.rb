class CreateUsers < ActiveRecord::Migration[5.1]
	def change
		create_table :users do |t|
			t.string :name,		null: false, default: "", unique: true
			t.string :username,	null: false, default: "", unique: true
			t.integer :user_data_id
			t.string :user_data_type

			t.timestamps
		end

		add_index :users, [:user_data_type, :user_data_id]
	end
end
