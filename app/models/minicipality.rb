# == Schema Information
#
# Table name: minicipalities
#
#  id              :integer          not null, primary key
#  name            :string
#  department_id   :integer
#  organization_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_minicipalities_on_department_id    (department_id)
#  index_minicipalities_on_organization_id  (organization_id)
#

class Minicipality < ApplicationRecord
	belongs_to :department
	belongs_to :organization
    validates :name, presence: true, length: {minimum: 5} 
end
