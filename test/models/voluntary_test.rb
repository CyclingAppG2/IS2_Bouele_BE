# == Schema Information
#
# Table name: voluntaries
#
#  id              :integer          not null, primary key
#  voluntary_score :float
#  birthday        :date
#  cellphone       :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  minicipality_id :integer
#  gender_id       :integer
#
# Indexes
#
#  index_voluntaries_on_gender_id        (gender_id)
#  index_voluntaries_on_minicipality_id  (minicipality_id)
#

require 'test_helper'

class VoluntaryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
