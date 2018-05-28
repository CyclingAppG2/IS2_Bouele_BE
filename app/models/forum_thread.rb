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

class ForumThread < ApplicationRecord
	belongs_to :user
	has_many :tags
	has_many :forum_posts
	has_many :attachments
	validates :body, presence: true, length: {minimum: 200}
	validates :title, presence: true, length: {minimum: 5}
	mount_uploader :img_prev, ImageUploader
	# validates :img_prev, presence: true

	def self.getForumThreadsBy(data, page)
		size_per_page = 20.0

		@forum_threads = ForumThread.all
		if data == 1
			@forum_threads.order(created_at: :asc)
		else
			@forum_threads.order(points: :asc)
		end
		@forum_threads.paginate(:page => page , :per_page => size_per_page)
	end
end
