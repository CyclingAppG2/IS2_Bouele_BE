class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :duration, :plus

  has_many :event_voluntaries
  has_many :voluntaries
  has_many :plus
  has_many :attachments
  has_many :locations
end
