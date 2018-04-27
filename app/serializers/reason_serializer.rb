# == Schema Information
#
# Table name: reasons
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ReasonSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_one :ban
end
