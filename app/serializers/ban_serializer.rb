# == Schema Information
#
# Table name: bans
#
#  id         :integer          not null, primary key
#  log        :string
#  reason     :string
#  starttime  :datetime
#  endtime    :datetime
#  user_id    :integer
#  admin_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_bans_on_admin_id  (admin_id)
#  index_bans_on_user_id   (user_id)
#

class BanSerializer < ActiveModel::Serializer
  attributes :id, :log, :reason, :starttime, :endtime, :user_id, :admin_id

  has_one :reason
  belongs_to :user
  belongs_to :admin
end
