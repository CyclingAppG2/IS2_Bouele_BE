class OrganizationCategory < ApplicationRecord
	belongs_to :organization
    validates :name, presence: true, length: {minimum: 5} 
end
