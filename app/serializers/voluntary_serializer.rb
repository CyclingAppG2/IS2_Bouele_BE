# == Schema Information
#
# Table name: voluntaries
#
#  id              :integer          not null, primary key
#  voluntary_score :integer
#  birthday        :date
#  gender          :string
#  cellphone       :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  minicipality_id :integer
#
# Indexes
#
#  index_voluntaries_on_minicipality_id  (minicipality_id)
#

class VoluntarySerializer < ActiveModel::Serializer
  attributes :id, :voluntary_score, :birthday, :gender, :cellphone
  has_many :theme_interests, :through => :theme_interests_voluntaries
	has_many  :theme_interests_voluntaries
  has_many :theme_interests
  has_many :event_voluntaries
  has_many :events
  has_one :user_polymorphism
end
