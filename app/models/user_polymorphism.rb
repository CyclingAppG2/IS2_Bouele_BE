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

class UserPolymorphism < ApplicationRecord
  belongs_to :user
  belongs_to :user_data, polymorphic: true
  validates :user_id, uniqueness:true
  validates_uniqueness_of :user_data_id, :scope => [:user_data_type]
end
