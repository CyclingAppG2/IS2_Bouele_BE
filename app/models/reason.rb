class Reason < ApplicationRecord
	belongs_to :ban
    validates :name, presence: true, length: {minimum: 20}
end
