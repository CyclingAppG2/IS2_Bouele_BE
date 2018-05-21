# == Schema Information
#
# Table name: organizations
#
#  id                       :integer          not null, primary key
#  category                 :string
#  NIT                      :string
#  mainaddress              :string
#  branches                 :string
#  firm                     :string
#  organization_score       :float
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  organization_category_id :integer
#  minicipality_id          :integer
#
# Indexes
#
#  index_organizations_on_minicipality_id           (minicipality_id)
#  index_organizations_on_organization_category_id  (organization_category_id)
#

require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
