# == Schema Information
#
# Table name: admins
#
#  id           :integer          not null, primary key
#  hoursperweek :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class AdminSerializer < ActiveModel::Serializer
  attributes :id, :hoursperweek

  has_many :subforums
  has_many :bans
  has_many :users, through: :bans
end
