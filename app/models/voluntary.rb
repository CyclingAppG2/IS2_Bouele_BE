# == Schema Information
#
# Table name: voluntaries
#
#  id             :integer          not null, primary key
#  themesinterest :string
#  score          :integer
#  birthday       :date
#  gender         :string
#  cellphone      :integer
#  city           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Voluntary < ApplicationRecord
    validates :score , presence: true, default: 0
    validates :gender , presence: true, length: {minimum: 1}
    validates :cellphone , presence: true, length: {minimum: 5}, numericality: { only_integer: true, greater_than: 0 }
	has_many :theme_interests
	has_many :event_voluntaries
	has_many :events, through: :event_voluntaries
	has_one :user, as: :user_data
end
