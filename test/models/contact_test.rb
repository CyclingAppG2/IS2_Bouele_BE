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

require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
