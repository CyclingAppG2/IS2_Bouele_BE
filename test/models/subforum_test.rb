# == Schema Information
#
# Table name: subforums
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  admin_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_subforums_on_admin_id  (admin_id)
#

require 'test_helper'

class SubforumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
