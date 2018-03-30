class Location < ApplicationRecord
	has_one :contact
	belongs_to :event
    validates :longitude, presence: true
    validates :latitudevalidates , presence: true
end
