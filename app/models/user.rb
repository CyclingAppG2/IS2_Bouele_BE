class User < ApplicationRecord
    validates :email, presence: true, length: {minimum: 3}, uniqueness: true
    validates :name, presence: true
    validates :username, presence: true, length: {minimum: 3}, uniqueness: true

end
