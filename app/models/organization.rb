class Organization < User
	has_one :organization_category
	has_many :minicipalities
	has_many :events
end
