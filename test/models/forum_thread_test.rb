# == Schema Information
#
# Table name: forum_threads
#
#  id         :integer          not null, primary key
#  body       :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :integer
#  points     :bigint(8)        default(0), not null
#  img_prev   :string
#  title      :string
#
# Indexes
#
#  index_forum_threads_on_event_id  (event_id)
#  index_forum_threads_on_user_id   (user_id)
#

require 'test_helper'

class ForumThreadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
