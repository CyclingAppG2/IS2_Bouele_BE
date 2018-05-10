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

class MinicipalitySerializer < ActiveModel::Serializer
  attributes :id, :name, :department_id

  belongs_to :department

end
