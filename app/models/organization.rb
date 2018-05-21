# == Schema Information
#
# Table name: organizations
#
#  id                       :integer          not null, primary key
#  category                 :string
#  NIT                      :string
#  mainaddress              :string
#  branches                 :string
#  firm                     :string
#  organization_score       :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  organization_category_id :integer
#  minicipality_id          :integer
#  score                    :float
#
# Indexes
#
#  index_organizations_on_minicipality_id           (minicipality_id)
#  index_organizations_on_organization_category_id  (organization_category_id)
#

class Organization < ApplicationRecord
    belongs_to :organization_category
	belongs_to :minicipality
	has_many :events
	has_one :user_polymorphism, as: :user_data
    validates :NIT, presence: true, length: {minimum: 5}
    validates :mainaddress, presence: true, length: {minimum: 5}
    validates :firm, presence: true, length: {minimum: 5}
    ## validates :organization_score, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 10 }
    
    def self.getMyStatistics(organization_id)
        @org = Organization.find(organization_id)
        years = []
        for i in @org.created_at.year..Time.now.year
        years.push(i)
        end
        month = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
        
        statistics = {}
        statistics["eventsStartInMonth"]={}
        years.each do |y|
            data = []
            month.each do |m|
                firstDay = DateTime.new(y,m,1).to_time.to_i*1000
                lastDay = DateTime.new(y,m,-1,-1,-1,-1).to_time.to_i*1000
                data.push(@org.events.where("events.start_datetime > ? AND events.start_datetime <= ?",firstDay,lastDay).count)
            end
            statistics["eventsStartInMonth"][y.to_s] = data
        end
        statistics["assistenceByEvent"]={}
        statistics["scoreByEvent"] ={}
        @org.events.each do |e|
            data = {"max_voluntaries": e.max_voluntaries, "assistences":  e.voluntaries.where.not("event_voluntaries.scorevoluntary IS ?", nil ).count}
            statistics["assistenceByEvent"][e.name] = data
            statistics["scoreByEvent"][e.name] = e.voluntaries.where('event_voluntaries.scoreorganization IS NOT ?', nil).average('event_voluntaries.scoreorganization').to_f
        end
        statistics
    end

    def self.calculateScore(organization_id)
        @organization = Organization.find(organization_id)
        data = 0
        @organization.events.each do |e|
            data += e.voluntaries.where('event_voluntaries.scoreorganization IS NOT ?', nil).average('event_voluntaries.scoreorganization').to_f
        end
        @organization.score = data / @organization.events.count
        @organization.save
    end

end
