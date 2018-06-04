# == Schema Information
#
# Table name: minicipalities
#
#  id            :integer          not null, primary key
#  name          :string
#  department_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_minicipalities_on_department_id  (department_id)
#

class Minicipality < ApplicationRecord
	belongs_to :department
	has_many :organizations
    validates :name, presence: true, length: {minimum: 5} 
end
