class Attachment < ApplicationRecord
	belongs_to :event
	belongs_to :forum_thread
	belongs_to :forum_post
    validates :route, presence: true, length: {minimum: 3} 
end
