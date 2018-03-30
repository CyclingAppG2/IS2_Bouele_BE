class User < ApplicationRecord
	has_many :bans
	has_many :admins, through: :bans
	has_many :forum_threads
	has_many :forum_posts	
    validates :email, presence: true, length: {minimum: 3}, uniqueness: true
    validates :name, presence: true
    validates :username, presence: true, length: {minimum: 3}, uniqueness: true

end
