# == Schema Information
#
# Table name: organizations
#
#  id                 :integer          not null, primary key
#  category           :string
#  NIT                :string
#  mainaddress        :string
#  branches           :string
#  firm               :string
#  organization_score :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Organization < ApplicationRecord
    has_one :organization_category
	has_many :minicipalities
	has_many :events
	has_one :user_polymorphism, as: :user_data
    validates :NIT, presence: true, length: {minimum: 5}
    validates :mainaddress, presence: true, length: {minimum: 5}
    validates :firm, presence: true, length: {minimum: 5}
    validates :organization_score, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 10 }
    
end
