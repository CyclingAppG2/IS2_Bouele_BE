# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  longitude  :float
#  latitude   :float
#  event_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_locations_on_event_id  (event_id)
#

class Location < ApplicationRecord
	has_one :contact
	belongs_to :event
    validates :longitude, presence: true
    validates :latitudevalidates , presence: true
end
