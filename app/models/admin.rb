class Admin < ApplicationRecord
	has_many :subforums
	has_many :bans
	has_many :users, through: :bans
end
