# == Schema Information
#
# Table name: subforums
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  admin_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_subforums_on_admin_id  (admin_id)
#

class SubforumSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :admin_id
  
  belongs_to :admin
  has_many :forum_threads
end
