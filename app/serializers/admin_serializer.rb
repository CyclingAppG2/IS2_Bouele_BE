class AdminSerializer < ActiveModel::Serializer
  attributes :id, :hoursperweek

  has_many :subforums
  has_many :bans
  has_many :users, through: :bans
end
