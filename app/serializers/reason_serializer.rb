class ReasonSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_id, :subforum_id

  belongs_to :ban
end
