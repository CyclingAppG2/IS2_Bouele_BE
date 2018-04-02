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

class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :category, :NIT, :mainaddress, :branches, :firm, :score

  has_one :organization_category
  has_many :minicipalities
  has_many :events
end
