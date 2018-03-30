class Ban < ApplicationRecord
	has_one :reason
	belongs_to :user
	belongs_to :admin
    validates :log, presence: true, length: {minimum: 10}
    validates :comments, presence: true, length: {minimum: 50}
    
end
