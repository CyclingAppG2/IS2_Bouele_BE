# == Schema Information
#
# Table name: genders
#
#  id         :integer          not null, primary key
#  gender     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GenderSerializer < ActiveModel::Serializer
  attributes :id, :gender
end
