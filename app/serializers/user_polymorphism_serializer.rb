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
# Indexes
#
#  index_user_polymorphisms_on_user_data_type_and_user_data_id  (user_data_type,user_data_id)
#

class UserPolymorphismSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :user_data_id, :user_data_type

  belongs_to :user
  belongs_to :user_data
end
