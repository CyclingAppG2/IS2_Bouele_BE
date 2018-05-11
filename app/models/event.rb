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

class Event < ApplicationRecord
	has_many :event_voluntaries, before_add: :validate_voluntary_limit, dependent: :destroy
	has_many :voluntaries, through: :event_voluntaries
	has_many :plus
	has_many :attachments
	has_many :locations
	belongs_to :organization

    validates :name, presence: true, length: {minimum: 3}, uniqueness: true
    validates :description, presence: true, length: {minimum: 100}, uniqueness: true
    validates :duration, presence: true
    #validates :start_datetime, presence: true

  private

  def validate_voluntary_limit(event_voluntary)
    raise Exception.new if event_voluntaries.size >= max_voluntaries
  end    
end
