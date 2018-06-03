# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  provider               :string           default("email"), not null
#  uid                    :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  allow_password_change  :boolean          default(FALSE)
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  name                   :string           default(""), not null
#  username               :string           default(""), not null
#  image                  :string
#  email                  :string           default(""), not null
#  tokens                 :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  points_day             :integer          default(0), not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_uid_and_provider      (uid,provider) UNIQUE
#

class User < ApplicationRecord
  # Include default devise modules. :confirmable,
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: %i[facebook, google_oauth2]
  include DeviseTokenAuth::Concerns::User


	# has_many :bans
	# has_many :admins, through: :bans
	has_many :forum_threads,  dependent: :destroy
  has_many :forum_posts,  dependent: :destroy
  has_many :boards,  dependent: :destroy
  has_one :user_polymorphism, ,  dependent: :destroy
  has_many :forum_posts, through: :boards,  dependent: :destroy
    validates :email, presence: true, length: {minimum: 3}, uniqueness: true
    validates :name, presence: true
    validates :username, presence: true, length: {minimum: 3}, uniqueness: true
    validates :points_day, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
    mount_uploader :image, AvatarUploader
    #serialize :image, JSON 

  def self.updatePointsDay
    User.all.each do |u|
      u.update(points_day: 10)
    end
  end
end
