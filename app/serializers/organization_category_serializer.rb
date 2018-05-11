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

class OrganizationCategorySerializer < ActiveModel::Serializer
  attributes :id,  :name

  belongs_to :organization
end
