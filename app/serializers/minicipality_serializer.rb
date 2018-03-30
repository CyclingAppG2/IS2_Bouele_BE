class MinicipalitySerializer < ActiveModel::Serializer
  attributes :id, :name, :department_id, :organization_id

  belongs_to :department
  belongs_to :organization
end
