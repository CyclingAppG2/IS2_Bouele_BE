class CreateOrganizationCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :organization_categories do |t|
      t.string :name

      t.timestamps
    end

    add_index :organization_categories, :organization_id
  end
end
