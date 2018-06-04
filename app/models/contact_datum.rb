# == Schema Information
#
# Table name: contact_data
#
#  id              :integer          not null, primary key
#  email           :string
#  body            :text
#  name            :string
#  city            :string
#  phone           :bigint(8)
#  type_contact_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_contact_data_on_type_contact_id  (type_contact_id)
#

class ContactDatum < ApplicationRecord
  belongs_to :type_contact, foreign_key: "type_contact_id", class_name: "TypeContact"
  validates :email, presence: true, length: {minimum: 5}
  validates :body, presence: true, length: {minimum: 20}
  validates :name, presence: true, length: {minimum: 5}
  validates :city, presence: true, length: {minimum: 5}
  validates :phone, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
