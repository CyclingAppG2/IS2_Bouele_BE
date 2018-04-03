class User < ApplicationRecord
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User
	has_many :bans
	has_many :admins, through: :bans
	has_many :forum_threads
	has_many :forum_posts	
    validates :email, presence: true, length: {minimum: 3}, uniqueness: true
    validates :name, presence: true
    validates :username, presence: true, length: {minimum: 3}, uniqueness: true

end
