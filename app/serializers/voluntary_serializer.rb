class VoluntarySerializer < ActiveModel::Serializer
  attributes :id, :themesinterest, :score, :birthday, :gender, :cellphone, :city

  has_many :theme_interests
  has_many :event_voluntaries
  has_many :events
end
