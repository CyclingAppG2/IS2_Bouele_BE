class ThemeInterestSerializer < ActiveModel::Serializer
  attributes :id, :themesinterest, :voluntary_id

  belongs_to :voluntaries
end
