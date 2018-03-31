# == Schema Information
#
# Table name: organization_categories
#
#  id              :integer          not null, primary key
#  name            :string
#  organization_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_organization_categories_on_organization_id  (organization_id)
#

require 'test_helper'

class OrganizationCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
