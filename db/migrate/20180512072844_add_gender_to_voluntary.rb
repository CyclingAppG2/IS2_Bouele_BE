class AddGenderToVoluntary < ActiveRecord::Migration[5.1]
  def change
    add_reference :voluntaries, :gender, foreign_key: true
  end
end
