class ForumThread < ApplicationRecord
	belongs_to :user
	belongs_to :subforum
	has_many :forum_posts
	has_many :attachments
end
