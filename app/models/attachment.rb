class Attachment < ApplicationRecord
    validates :route, presence: true, length: {minimum: 3} 
end
