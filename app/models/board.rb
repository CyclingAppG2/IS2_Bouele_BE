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

class Board < ApplicationRecord
  belongs_to :user
  belongs_to :forum_post

  validates :like, numericality: { only_integer: true, greater_than_or_equal_to: -1, less_than_or_equal_to: 1 }
end
