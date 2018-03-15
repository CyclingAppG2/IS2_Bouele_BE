class ForumThread < ApplicationRecord
	belongs_to :user
	belongs_to :subforum
	has_many :forum_posts
	has_many :attachments
    validatates :text, presence: true, length: {minimum: 20}
end
