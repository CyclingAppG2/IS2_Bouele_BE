class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :cellphone, :location_id

  belongs_to :location
end
