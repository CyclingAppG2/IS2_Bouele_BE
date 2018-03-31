# == Schema Information
#
# Table name: contacts
#
#  id          :integer          not null, primary key
#  name        :string
#  cellphone   :integer
#  location_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_contacts_on_location_id  (location_id)
#

class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :cellphone, :location_id

  belongs_to :location
end
