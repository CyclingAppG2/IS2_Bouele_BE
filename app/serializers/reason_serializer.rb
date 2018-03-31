# == Schema Information
#
# Table name: reasons
#
#  id         :integer          not null, primary key
#  name       :string
#  ban_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_reasons_on_ban_id  (ban_id)
#

class ReasonSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_id, :subforum_id

  belongs_to :ban
end
