# == Schema Information
#
# Table name: events
#
#  id              :integer          not null, primary key
#  name            :string
#  description     :string
#  duration        :bigint(8)
#  organization_id :integer
#  start_datetime  :datetime
#  max_voluntaries :integer          default(100)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  files           :string
#
# Indexes
#
#  index_events_on_organization_id  (organization_id)
#

class Event < ApplicationRecord
	has_many :event_voluntaries, before_add: :validate_voluntary_limit, dependent: :destroy
	has_many :voluntaries, through: :event_voluntaries
	has_many :plus, dependent: :destroy
	has_many :locations, dependent: :destroy
	belongs_to :organization

    validates :name, presence: true, length: {minimum: 3}, uniqueness: true
    validates :description, presence: true, length: {minimum: 20}
    validates :duration, presence: true,  numericality: { only_integer: true, greater_than: 1 }
    validates :start_datetime, presence: true

    mount_uploaders :files, FileUploader

    def self.howManyVoluntaries(event_id)
      Event.find(event_id).voluntaries.count()
    end

    def self.eventIsLast(event_id)
      ans = Event.where("start_datetime > ? AND id = ?", DateTime.now, event_id)
      if ans.empty?
        true
      else
        false
      end
    end

    def self.eventsAvailables
      eventInFuture = Event.eventsInFuture
      ans = []
      eventInFuture.each do |event|
        ans = event.voluntaries.count() < event.max_voluntaries ?  ans.push(event) : ans
      end
      ans
    end

    def self.filter_events(events, filters)
      
    end

    private
    def self.eventsInFuture
      Event.where("start_datetime > ? ", DateTime.now)
    end
    def validate_filters(filters)
      
    end
  

  def validate_voluntary_limit(event_voluntary)
    raise Exception.new if event_voluntaries.size >= max_voluntaries
  end    
end
