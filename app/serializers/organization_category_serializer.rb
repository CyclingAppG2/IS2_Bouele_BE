class OrganizationCategorySerializer < ActiveModel::Serializer
  attributes :id,  :name,  :organization_id

  belongs_to :organization
end
