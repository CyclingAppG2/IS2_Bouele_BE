class Admin < ApplicationRecord
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  #validates :hoursperweek,  presence: true, default: 0, numericality: { only_integer: true, greater_than: 0 }

	has_many :subforums
	has_many :bans
	has_many :users, through: :bans
end
