# == Schema Information
#
# Table name: plus
#
#  id         :integer          not null, primary key
#  name       :string
#  event_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_plus_on_event_id  (event_id)
#

class PluSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :event
end
