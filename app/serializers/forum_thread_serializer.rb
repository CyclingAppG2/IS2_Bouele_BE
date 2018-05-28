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

class ForumThreadSerializer < ActiveModel::Serializer
  attributes :id, :body, :user_id , :title, :points, :img_prev

  belongs_to :user
	has_many :tags
	has_many :forum_posts
	has_many :attachments
end
