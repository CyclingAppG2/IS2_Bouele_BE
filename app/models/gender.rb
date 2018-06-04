# == Schema Information
#
# Table name: genders
#
#  id         :integer          not null, primary key
#  gender     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Gender < ApplicationRecord
    validates :gender, presence: true, length: {minimum: 1}, uniqueness: true
end
