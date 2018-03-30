class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :name, :username, :type

  has_many :bans
  has_many :admins
  has_many :forum_threads
  has_many :forum_posts	
end
