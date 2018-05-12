# == Schema Information
#
# Table name: theme_interests
#
#  id             :integer          not null, primary key
#  themesinterest :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class ThemeInterest < ApplicationRecord
    has_many :voluntaries, :through => :theme_interests_voluntaries
	has_many  :theme_interests_voluntaries
    has_and_belongs_to_many :voluntaries
	
    validates :themesinterest, presence: true, length: {minimum: 3}, uniqueness: true
end
