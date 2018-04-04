# == Schema Information
#
# Table name: event_voluntaries
#
#  id                   :integer          not null, primary key
#  scorevoluntary       :integer
#  scoreorganization    :integer
#  commentsvoluntary    :string
#  commentsorganization :string
#  event_id             :integer
#  voluntary_id         :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
# Indexes
#
#  index_event_voluntaries_on_event_id      (event_id)
#  index_event_voluntaries_on_voluntary_id  (voluntary_id)
#

require 'test_helper'

class EventVoluntaryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
