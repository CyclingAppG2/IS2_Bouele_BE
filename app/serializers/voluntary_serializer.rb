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

class VoluntarySerializer < ActiveModel::Serializer
  attributes :id, :themesinterest, :score, :birthday, :gender, :cellphone, :city

  has_many :theme_interests
  has_many :event_voluntaries
  has_many :events
  has_one :user_polymorphism
end
