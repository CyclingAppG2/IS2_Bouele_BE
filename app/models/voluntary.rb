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

class Voluntary < ApplicationRecord
    #validates :voluntary_score , presence: true, default: 0
    validates :gender , presence: true, length: {minimum: 1}
    validates :cellphone , presence: true, length: {minimum: 5}, numericality: { only_integer: true, greater_than: 0 }
	has_many :interest_voluntaries
	has_many :event_voluntaries, dependent: :destroy
	has_many :events, through: :event_voluntaries
	has_one :user_polymorphism, as: :user_data

	def self.voluntariesInEvents
		Voluntaries.joins(:EventVoluntary, :UserPolymorphism)
	end
end


