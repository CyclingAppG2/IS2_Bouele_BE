class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string :category
      t.string :NIT
      t.string :mainaddress
      t.string :branches
      t.string :firm
      t.integer :organization_score

      t.timestamps
    end
  end
end
