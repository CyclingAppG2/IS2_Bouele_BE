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

  # has_many :voluntaries
  #has_many :voluntaries, :through => :theme_interests_voluntaries
	#has_many  :theme_interests_voluntaries
end
