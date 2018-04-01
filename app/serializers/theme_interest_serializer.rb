# == Schema Information
#
# Table name: theme_interests
#
#  id             :integer          not null, primary key
#  themesinterest :string
#  voluntary_id   :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_theme_interests_on_voluntary_id  (voluntary_id)
#

class ThemeInterestSerializer < ActiveModel::Serializer
  attributes :id, :themesinterest, :voluntary_id

  belongs_to :voluntaries
end
