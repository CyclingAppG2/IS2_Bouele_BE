# == Schema Information
#
# Table name: departments
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Department < ApplicationRecord
	has_many :minicipalities
    validates :name, presence: true, length: {minimum: 5}, uniqueness: true
end
