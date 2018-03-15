class Voluntary < User
	has_many :theme_interests
	has_many :event_voluntaries
	has_many :events, through: :events

end
