class Plu < ApplicationRecord
	belongs_to :event
    validates :name, presence: true, length: {minimum: 5}
end
