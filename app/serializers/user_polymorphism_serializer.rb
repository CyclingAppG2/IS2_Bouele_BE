# == Schema Information
#
# Table name: user_polymorphisms
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  user_data_id   :integer
#  user_data_type :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class UserPolymorphismSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :user_data_id, :user_data_type

  belongs_to :user
  belongs_to :user_data
end
