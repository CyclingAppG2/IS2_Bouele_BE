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

class Event < ApplicationRecord
	has_many :event_voluntaries, before_add: :validate_voluntary_limit, dependent: :destroy
	has_many :voluntaries, through: :event_voluntaries
	has_many :plus, dependent: :destroy
	has_many :locations, dependent: :destroy
  belongs_to :organization
  has_many :forum_threads

    validates :name, presence: true, length: {minimum: 3}, uniqueness: true
    validates :description, presence: true, length: {minimum: 20}
    validates :duration, presence: true,  numericality: { only_integer: true, greater_than: 1 }
    validates :start_datetime, presence: true

    mount_uploaders :files, FileUploader

    def self.howManyVoluntaries(event_id)
      Event.find(event_id).voluntaries.count()
    end

    def self.eventIsLast(event_id)
      ans = Event.where("start_datetime > ? AND id = ?", Time.now.to_i*1000, event_id)
      if ans.empty?
        true
      else
        false
      end
    end

    def self.eventsAvailables(voluntary_id)
      eventInFuture = Event.eventsInFuture
      ans = []
      eventInFuture.each do |event|
        ans = event.voluntaries.count() < event.max_voluntaries && !event.voluntaries.exists?(voluntary_id)  ?  ans.push(event) : ans
      end
      ans
    end


    def self.filter_events(filters, voluntary_id )
      filter = Event.validate_filters(filters)
      query = Event.joins(:plus)
    if filter[:name].present?
      query = query.where("events.name LIKE  ?", "%#{filter[:name]}%")
    end
    if filter[:date_min].present?
      query = query.where("events.start_datetime >= ?", filter[:date_min] )
    end
    if filter[:date_max].present?
      query = query.where("events.start_datetime <= ?", filter[:date_max] )
    end  
     if filter[:plus].present?
       query = query.where("plus.name LIKE ?","%#{filter[:plus]}%" )
     end
     query = query.where("events.start_datetime > ?   ", Time.now.to_i*1000 )

     ans = []
    query.all.each do |event|
      ans = event.voluntaries.count() < event.max_voluntaries && !event.voluntaries.exists?(voluntary_id)  ?  ans.push(event) : ans
    end
    ans
    end

    private
    def self.eventsInFuture
      Event.where("start_datetime > ? ", Time.now.to_i*1000)
    end

    def self.validate_filters(filters)
      result = {}
      if !filters.nil?
        filters.each do |filter|
          if filter[:type] == "plus"
            result[:plus] = filter[:data]
          end
          if filter[:type] == "date_min"
            result[:date_min] = filter[:data]
          end
          if filter[:type] == "date_max"
            result[:date_max] = filter[:data]
          end
          if filter[:type] == "name"
            result[:name] = filter[:data]
          end
        end
      end
      result
    end


  

  def validate_voluntary_limit(event_voluntary)
    raise Exception.new if event_voluntaries.size >= max_voluntaries
  end    
end


# {
#   "filters": [
#     {
#       "type": "plus",
#       "data": "string"
#     },
#      {
#       "type": "date_min",
#       "data": "long"
#     },
#      {
#       "type": "date_max",
#       "data": "long"
#     }
#   ] Event.select("events.*, count(event_voluntaries.id) as num").joins(:plus, :voluntaries).group('event_voluntaries.event_id').where("start_datetime > ?   ", Time.now.to_i*1000, ).where("plus.name LIKE ?", "%#{8}%")
# }
