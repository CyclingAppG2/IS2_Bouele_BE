# == Schema Information
#
# Table name: contact_data
#
#  id              :integer          not null, primary key
#  email           :string
#  body            :text
#  name            :string
#  city            :string
#  phone           :integer
#  type_contact_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_contact_data_on_type_contact_id  (type_contact_id)
#

class ContactDatum < ApplicationRecord
  belongs_to :type_contact
end
