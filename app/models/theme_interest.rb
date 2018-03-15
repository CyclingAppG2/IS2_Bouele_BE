class ThemeInterest < ApplicationRecord
    validates :themesinterest, presence: true, length: {minimum: 3}, uniqueness: true
end
