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

class EventVoluntarySerializer < ActiveModel::Serializer
  attributes :id,  :scorevoluntary, :scoreorganization, :commentsvoluntary, :commentsorganization,  :event_id,  :voluntary_id
 
  belongs_to :voluntary
  belongs_to :event
end
