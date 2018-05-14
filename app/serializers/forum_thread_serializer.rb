# == Schema Information
#
# Table name: forum_threads
#
#  id             :integer          not null, primary key
#  text           :string
#  user_id        :integer
#  subforum_id    :integer
#  last_poster_id :integer
#  last_post_at   :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_forum_threads_on_subforum_id  (subforum_id)
#  index_forum_threads_on_user_id      (user_id)
#

class ForumThreadSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_id, :subforum_id

  belongs_to :user
  belongs_to :subforum
  has_many :forum_posts
  has_many :attachments
end
