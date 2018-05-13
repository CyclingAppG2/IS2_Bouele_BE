class AddThemeInteressToVoluntary < ActiveRecord::Migration[5.1]
  def change
    add_reference :voluntaries, :minicipality, foreign_key: true
  end
end
