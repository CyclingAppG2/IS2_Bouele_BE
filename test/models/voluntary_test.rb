# == Schema Information
#
# Table name: voluntaries
#
#  id             :integer          not null, primary key
#  themesinterest :string
#  score          :integer
#  birthday       :date
#  gender         :string
#  cellphone      :integer
#  city           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class VoluntaryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
