class DepartmentSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :minicipalities
end
