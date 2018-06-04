# == Schema Information
#
# Table name: voluntaries
#
#  id              :integer          not null, primary key
#  voluntary_score :float
#  birthday        :date
#  cellphone       :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  minicipality_id :integer
#  gender_id       :integer
#
# Indexes
#
#  index_voluntaries_on_gender_id        (gender_id)
#  index_voluntaries_on_minicipality_id  (minicipality_id)
#

class VoluntarySerializer < ActiveModel::Serializer
  attributes :id, :voluntary_score, :birthday, :cellphone, :user
  has_many  :theme_interests_voluntaries
  has_many :theme_interests, :through => :theme_interests_voluntaries
  has_many :event_voluntaries
  has_many :events
  has_one :user_polymorphism
  has_one :gender

  def user
    object.user_polymorphism.user
  end
end
