# == Schema Information
#
# Table name: organization_categories
#
#  id              :integer          not null, primary key
#  name            :string
#  organization_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_organization_categories_on_organization_id  (organization_id)
#

class OrganizationCategory < ApplicationRecord
	belongs_to :organization
    validates :name, presence: true, length: {minimum: 5} 
end
