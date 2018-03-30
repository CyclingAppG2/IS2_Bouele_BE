class Minicipality < ApplicationRecord
	belongs_to :department
	belongs_to :organization
    validates :name, presence: true, length: {minimum: 5} 
end
