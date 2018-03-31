# == Schema Information
#
# Table name: admins
#
#  id           :integer          not null, primary key
#  hoursperweek :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Admin < ApplicationRecord
    validates :hoursperweek,  presence: true, default: 0, numericality: { only_integer: true, greater_than: 0 }

	has_many :subforums
	has_many :bans
	has_many :users, through: :bans
end
