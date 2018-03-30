class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :category, :NIT, :mainaddress, :branches, :firm, :score

  has_one :organization_category
  has_many :minicipalities
  has_many :events
end
