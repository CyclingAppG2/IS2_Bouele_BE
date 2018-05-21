class AddScoreToOrganization < ActiveRecord::Migration[5.1]
  def change
    change_column :organizations, :organization_score, :float
  end
end
