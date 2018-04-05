# == Schema Information
#
# Table name: voluntaries
#
#  id              :integer          not null, primary key
#  themesinterest  :string
#  voluntary_score :integer
#  birthday        :date
#  gender          :string
#  cellphone       :integer
#  city            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Voluntary < ApplicationRecord
    #validates :voluntary_score , presence: true, default: 0
    validates :gender , presence: true, length: {minimum: 1}
    validates :cellphone , presence: true, length: {minimum: 5}, numericality: { only_integer: true, greater_than: 0 }
	has_many :theme_interests
	has_many :event_voluntaries, dependent: :destroy
	has_many :events, through: :event_voluntaries
	has_one :user_polymorphism, as: :user_data

    def findVoluntaryScore
      @score = 0
      @numer_of_events = 0
      @voluntary = Voluntary.find((params[:voluntary]).id)
      @event_voluntaries = EventVoluntary.where(voluntary_id: @voluntary.id).to_a
      @event_voluntaries do |e|
        @score+= e.scorevoluntary
        @number_of_events += 1
      end
      @voluntary.score = @score/@numer_of_events
    end
end
