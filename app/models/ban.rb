class Ban < ApplicationRecord
    validates :log, presence: true, length: {minimum: 10}
    validates :comments, presence: true, length: {minimum: 50}
    
end
