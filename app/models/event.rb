class Event < ApplicationRecord
	has_many :event_voluntaries
	has_many :voluntaries, through: :event_voluntaries
	has_many :plus
	has_many :attachments
	has_many :locations
end
