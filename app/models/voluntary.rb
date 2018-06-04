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

class Voluntary < ApplicationRecord
    #validates :voluntary_score , presence: true, default: 0
	validates :cellphone , presence: true, length: {minimum: 5}, numericality: { only_integer: true, greater_than: 0 }
	has_many  :theme_interests_voluntaries,  dependent: :destroy
	has_many :theme_interests, :through => :theme_interests_voluntaries
	has_many :event_voluntaries, dependent: :destroy
	has_many :events, through: :event_voluntaries
	has_one :user_polymorphism, as: :user_data
	belongs_to :gender

	def self.voluntariesInEvents
		Voluntaries.joins(:EventVoluntary, :UserPolymorphism)
	end

	def self.calculateScore(voluntary_id)
        @voluntary = Voluntary.find(voluntary_id)
        @voluntary.voluntary_score = @voluntary.events.where('event_voluntaries.scorevoluntary IS NOT ?', nil).average('event_voluntaries.scorevoluntary').to_f
        @voluntary.save
    end
end


