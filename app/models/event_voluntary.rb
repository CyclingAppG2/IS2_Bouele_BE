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
# Indexes
#
#  index_event_voluntaries_on_event_id      (event_id)
#  index_event_voluntaries_on_voluntary_id  (voluntary_id)
#

class EventVoluntary < ApplicationRecord
	belongs_to :voluntary
	belongs_to :event
    validates :scorevoluntary, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
    validates :scoreorganization, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
    validates :commentsvoluntary, presence: true, length: {minimum: 20}
    validates :commentsorganization, presence: true, length: {minimum: 20}
end
