# == Schema Information
#
# Table name: events
#
#  id              :integer          not null, primary key
#  name            :string
#  description     :string
#  duration        :integer
#  plus            :string
#  organization_id :integer
#  start_datetime  :datetime
#  max_voluntaries :integer          default(100)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_events_on_organization_id  (organization_id)
#

class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :duration, :plus, :start_datetime, :max_voluntaries

  has_many :event_voluntaries
  has_many :voluntaries
  has_many :plus
  has_many :attachments
  has_many :locations
  belongs_to :organization
end
