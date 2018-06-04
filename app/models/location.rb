# == Schema Information
#
# Table name: locations
#
#  id          :integer          not null, primary key
#  longitude   :float
#  latitude    :float
#  event_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  label       :string
#  person_name :string
#  email       :string
#
# Indexes
#
#  index_locations_on_event_id  (event_id)
#

class Location < ApplicationRecord
	belongs_to :event
    validates :longitude, presence: true
    validates :latitude , presence: true
    validates :label, presence: true
    validates :person_name, presence: true
    validates :email, presence: true
end
