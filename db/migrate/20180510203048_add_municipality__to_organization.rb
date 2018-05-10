class AddMunicipalityToOrganization < ActiveRecord::Migration[5.1]
  def change
    add_reference :organizations, :minicipality, foreign_key: true
  end
end
