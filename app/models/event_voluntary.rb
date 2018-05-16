# == Schema Information
#
# Table name: event_voluntaries
#
#  id                   :integer          not null, primary key
#  scorevoluntary       :integer
#  scoreorganization    :integer
#  commentsvoluntary    :string
#  commentsorganization :string
#  event_id             :integer
#  voluntary_id         :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class EventVoluntary < ApplicationRecord
	belongs_to :voluntary
	belongs_to :event
    validates :event_id, :uniqueness => { :scope => :voluntary_id }
    #validates :scorevoluntary, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
    #validates :scoreorganization, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
    #validates :commentsvoluntary, presence: true, length: {minimum: 20}
    #validates :commentsorganization, presence: true, length: {minimum: 20}

    def self.validateAll(event_id)
        event = Event.find(event_id)
        if Event.howManyVoluntaries(event_id) < event.max_voluntaries && !Event.eventIsLast(event_id)
            true
        else
            false
        end
    end

    def self.voluntaryInEvent(voluntary_id, event_id)
        EventVoluntary.where(voluntary_id: voluntary_id, event_id: event_id)       
    end
    
end
