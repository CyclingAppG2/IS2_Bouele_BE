# == Schema Information
#
# Table name: forum_posts
#
#  id              :integer          not null, primary key
#  text            :string
#  user_id         :integer
#  forum_thread_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_forum_posts_on_forum_thread_id  (forum_thread_id)
#  index_forum_posts_on_user_id          (user_id)
#

class ForumPostSerializer < ActiveModel::Serializer
  attributes :id,  :text, :user_id, :forum_thread_id, :created_at, :updated_at, :likes, :dislikes

  belongs_to :forum_thread
  belongs_to :user
  has_many :boards

def likes
  Board.where(forum_post_id: object.id).where(like: 1).count
end

def dislikes
  Board.where(forum_post_id: object.id).where(like: -1).count
end

end
