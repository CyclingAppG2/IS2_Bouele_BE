class Ban < ApplicationRecord
	has_one :reason
	belongs_to :user
	belongs_to :admin
end
