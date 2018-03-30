class BanSerializer < ActiveModel::Serializer
  attributes :id, :log, :reason, :starttime, :endtime, :user_id, :admin_id

  has_one :reason
  belongs_to :user
  belongs_to :admin
end
