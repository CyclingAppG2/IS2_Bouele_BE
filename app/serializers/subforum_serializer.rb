class SubforumSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :admin_id
  
  belongs_to :admin
  has_many :forum_threads
end
