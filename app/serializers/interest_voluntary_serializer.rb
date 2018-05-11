# == Schema Information
#
# Table name: interest_voluntaries
#
#  id               :integer          not null, primary key
#  theme_interes_id :integer
#  voluntary_id     :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_interest_voluntaries_on_theme_interes_id  (theme_interes_id)
#  index_interest_voluntaries_on_voluntary_id      (voluntary_id)
#

class InterestVoluntarySerializer < ActiveModel::Serializer
  attributes :id
  has_one :theme_interes
  has_one :voluntary
end