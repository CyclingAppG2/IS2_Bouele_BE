class EventVoluntarySerializer < ActiveModel::Serializer
  attributes :id,  :scorevoluntary, :scoreorganization, :commentsvoluntary, :commentsorganization,  :event_id,  :voluntary_id
 
  belongs_to :voluntary
  belongs_to :event
end
