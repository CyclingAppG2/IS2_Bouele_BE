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
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_events_on_organization_id  (organization_id)
#

class Event < ApplicationRecord
	has_many :event_voluntaries, dependent: :destroy
	has_many :voluntaries, through: :event_voluntaries
	has_many :plus
	has_many :attachments
	has_many :locations
	belongs_to :organization
    validates :name, presence: true, length: {minimum: 3}, uniqueness: true
    validates :description, presence: true, length: {minimum: 100}, uniqueness: true
    validates :duration, presence: true
    #validates :datetime, presence: true
    
    def findAllPastEventsFromOrganization(organization_id)
      @events = []
      Event.find_each do |e|
	@events << e
      end
      return @events
    end

    def findEventScore
      @score = 0
      @numer_of_voluntaries = 0
      @event = Event.find(params[:event].id)
      @event_voluntaries = EventVoluntary.where(event_id: @event.id).to_a
      @event_voluntaries.each do |e|
        @score+= e.scoreorganization
        @number_of_voluntaries += 1
      end
      @event.score = @score/@numer_of_voluntaries
    end
end
