class ThemeInterest < ApplicationRecord
	belongs_to :voluntaries
    validates :themesinterest, presence: true, length: {minimum: 3}, uniqueness: true
end
