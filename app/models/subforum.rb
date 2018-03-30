class Subforum < ApplicationRecord
	belongs_to :admin
	has_many :forum_threads
    validates :name , presence: true, length: {minimum: 5}
    validates :description, presence: true, length: {minimum: 5}
end
