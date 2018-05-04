# == Schema Information
#
# Table name: voluntaries
#
#  id              :integer          not null, primary key
#  themesinterest  :string
#  voluntary_score :integer
#  birthday        :date
#  gender          :string
#  cellphone       :bigint(8)
#  city            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class VoluntaryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
