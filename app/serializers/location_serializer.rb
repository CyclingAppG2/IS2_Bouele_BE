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

class LocationSerializer < ActiveModel::Serializer
  attributes :id, :longitude, :latitude, :event_id, :label, :person_name, :email


  belongs_to :event
end
