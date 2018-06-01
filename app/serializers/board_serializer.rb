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

class BoardSerializer < ActiveModel::Serializer
  attributes :id, :like
  has_one :user
  has_one :forum_post
end
