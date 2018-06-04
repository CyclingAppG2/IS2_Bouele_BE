# == Schema Information
#
# Table name: boards
#
#  id            :integer          not null, primary key
#  like          :integer
#  user_id       :integer
#  forum_post_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_boards_on_forum_post_id  (forum_post_id)
#  index_boards_on_user_id        (user_id)
#

require 'test_helper'

class BoardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
