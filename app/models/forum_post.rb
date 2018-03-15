class ForumPost < ApplicationRecord
	belongs_to :forum_thread
	belongs_to :user
	has_many :attachments
    validatates :text, presence: true, length: {minimum: 20}
end
