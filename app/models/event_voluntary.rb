class EventVoluntary < ApplicationRecord
    validates :scorevoluntary, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
    validates :scoreorganization, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
    validates :commentsvoluntary, presence: true, length: {minimum: 20}
    validates :commentsorganization, presence: true, length: {minimum: 20}
end
