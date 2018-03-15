class Voluntary < ApplicationRecord
    validates :score , presence: true, default: 0
    validates :gender , presence: true, length: {minimum: 1}
    validates :cellphone , presence: true, length: {minimum: 5}, numericality: { only_integer: true, greater_than: 0 }
end
