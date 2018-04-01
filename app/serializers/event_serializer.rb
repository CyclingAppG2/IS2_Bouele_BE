# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  duration    :integer
#  plus        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :duration, :plus

  has_many :event_voluntaries
  has_many :voluntaries
  has_many :plus
  has_many :attachments
  has_many :locations
end
