class AddOrganizationCategoryToOrganization < ActiveRecord::Migration[5.1]
  def change
    add_reference :organizations, :organization_category, foreign_key: true
  end
end
