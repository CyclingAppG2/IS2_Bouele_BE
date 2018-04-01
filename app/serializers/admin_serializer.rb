# == Schema Information
#
# Table name: admins
#
#  id                     :integer          not null, primary key
#  hoursperweek           :integer
#  name                   :string           default(""), not null
#  username               :string           default(""), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  authentication_token   :string(30)
#
# Indexes
#
#  index_admins_on_authentication_token  (authentication_token) UNIQUE
#  index_admins_on_email                 (email) UNIQUE
#  index_admins_on_reset_password_token  (reset_password_token) UNIQUE
#

class AdminSerializer < ActiveModel::Serializer
  attributes :id, :hoursperweek, :name, :username

  has_many :subforums
  has_many :bans
  has_many :users, through: :bans
end
