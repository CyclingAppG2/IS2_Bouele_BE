class Subforum < ApplicationRecord
	belongs_to :admin
	has_many :forum_threads
end
