class Organization < ApplicationRecord
    validates :NIT, presence: true, length: {minimum: 5}
    validates :mainaddress, presence: true, length: {minimum: 5}
    validates :firm, presence: true, length: {minimum: 5}
    validates :score, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 10 }
end
