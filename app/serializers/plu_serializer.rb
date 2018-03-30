class PluSerializer < ActiveModel::Serializer
  attributes :id, :name, :event_id

  belongs_to :event
end
