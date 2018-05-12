# == Schema Information
#
# Table name: theme_interests_voluntaries
#
#  id                :integer          not null, primary key
#  theme_interest_id :integer
#  voluntary_id      :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_theme_interests_voluntaries_on_theme_interest_id  (theme_interest_id)
#  index_theme_interests_voluntaries_on_voluntary_id       (voluntary_id)
#

class ThemeInterestsVoluntarySerializer < ActiveModel::Serializer
  attributes :id
  has_one :theme_interest
  has_one :voluntary
end
