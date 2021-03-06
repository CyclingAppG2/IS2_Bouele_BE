# == Schema Information
#
# Table name: admins
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
#  hoursperweek           :integer
#  tokens                 :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_admins_on_email                 (email) UNIQUE
#  index_admins_on_reset_password_token  (reset_password_token) UNIQUE
#  index_admins_on_uid_and_provider      (uid,provider) UNIQUE
#

class Admin < ApplicationRecord

  # Include default devise modules. :confirmable,            :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable

  include DeviseTokenAuth::Concerns::User
  #validates :hoursperweek,  presence: true, default: 0, numericality: { only_integer: true, greater_than: 0 }

  #validates :hoursperweek,  presence: true, default: 0, numericality: { only_integer: true, greater_than: 0 }

	has_many :subforums
	has_many :bans
  has_many :users, through: :bans
  
  # def getBanSbyUser user
    
  # end

end
