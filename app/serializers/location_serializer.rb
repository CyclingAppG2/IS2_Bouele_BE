class LocationSerializer < ActiveModel::Serializer
  attributes :id, :longitude, :latitude, :event_id

  has_one :contact
  belongs_to :event
end
