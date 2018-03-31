# == Schema Information
#
# Table name: reasons
#
#  id         :integer          not null, primary key
#  name       :string
#  ban_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_reasons_on_ban_id  (ban_id)
#

require 'test_helper'

class ReasonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
