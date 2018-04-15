# == Schema Information
#
# Table name: type_contacts
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TypeContactSerializer < ActiveModel::Serializer
  attributes :id, :name
end
