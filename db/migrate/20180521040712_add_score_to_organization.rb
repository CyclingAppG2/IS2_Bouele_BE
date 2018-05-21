class AddScoreToOrganization < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :score, :float
  end
end
