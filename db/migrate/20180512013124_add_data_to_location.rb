class AddDataToLocation < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :label, :string
    add_column :locations, :person_name, :string
    add_column :locations, :email, :string
  end
end
