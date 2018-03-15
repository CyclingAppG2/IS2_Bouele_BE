class Department < ApplicationRecord
	has_many :minicipalities
    validates :name, presence: true, length: {minimum: 5}, uniqueness: true
end
