class User < ApplicationRecord
	has_many :bans
	has_many :admins, through: :bans
	has_many :forum_threads
	has_many :forum_posts	
end
