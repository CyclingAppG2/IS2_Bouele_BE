# == Schema Information
#
# Table name: theme_interests
#
#  id             :integer          not null, primary key
#  themesinterest :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class ThemeInterestSerializer < ActiveModel::Serializer
  attributes :id, :themesinterest

  has_many :interest_voluntaries
end
