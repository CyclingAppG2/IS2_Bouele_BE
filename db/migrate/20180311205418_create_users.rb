class CreateUsers < ActiveRecord::Migration[5.1]
	def change
		create_table :users do |t|
			t.string :name,		null: false, default: "", unique: true
			t.string :username,	null: false, default: "", unique: true
			t.string :type
			t.timestamps
		end
	end
end
