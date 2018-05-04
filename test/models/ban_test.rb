# == Schema Information
#
# Table name: bans
#
#  id         :integer          not null, primary key
#  log        :string
#  reason_id  :integer
#  starttime  :datetime
#  endtime    :datetime
#  user_id    :integer
#  admin_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_bans_on_admin_id   (admin_id)
#  index_bans_on_reason_id  (reason_id)
#  index_bans_on_user_id    (user_id)
#

require 'test_helper'

class BanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
