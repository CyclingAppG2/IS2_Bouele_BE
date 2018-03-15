class Contact < ApplicationRecord
	belongs_to :location
    validates :name, presence: true, length: {minimum: 3}
    validates :cellphone, presence: true, numericality: { only_integer: true, greater_than: 0 }
    
end
