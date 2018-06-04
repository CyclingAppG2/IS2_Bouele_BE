class AddScoreToVoluntary < ActiveRecord::Migration[5.1]
  def change
    change_column :voluntaries, :voluntary_score, :float
  end
end
