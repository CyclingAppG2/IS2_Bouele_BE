# == Schema Information
#
# Table name: events
#
#  id              :integer          not null, primary key
#  name            :string
#  description     :string
#  duration        :integer
#  organization_id :integer
#  start_datetime  :bigint(8)
#  max_voluntaries :integer          default(100)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  files           :string
#
# Indexes
#
#  index_events_on_organization_id  (organization_id)
#

class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :duration, :start_datetime, :max_voluntaries, :files

  has_many :event_voluntaries
  has_many :voluntaries, through: :event_voluntaries
  has_many :plus
  has_many :locations
  belongs_to :organization
  has_many :forum_threads
end
