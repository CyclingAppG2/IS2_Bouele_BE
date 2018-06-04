# == Schema Information
#
# Table name: organization_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_organization_categories_on_organization_id  ()
#

class OrganizationCategory < ApplicationRecord
	has_one :organization
    validates :name, presence: true, length: {minimum: 5} 
end
