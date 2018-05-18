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

class ForumPost < ApplicationRecord
	belongs_to :forum_thread
	belongs_to :user
	has_many :attachments
    validates :text, presence: true, length: {minimum: 20}

    def self.findPostsThatBelongToThread(forum_threadid)
      @forum_posts = ForumPost.where(forum_thread_id: forum_threadid).order("created_at")
      @forum_posts
    end
end
