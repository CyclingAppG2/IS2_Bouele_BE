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

class Contact < ApplicationRecord
	belongs_to :location
    validates :name, presence: true, length: {minimum: 3}
    validates :cellphone, presence: true, numericality: { only_integer: true, greater_than: 0 }
    
end
