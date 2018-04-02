# == Schema Information
#
# Table name: organizations
#
#  id          :integer          not null, primary key
#  category    :string
#  NIT         :string
#  mainaddress :string
#  branches    :string
#  firm        :string
#  score       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
