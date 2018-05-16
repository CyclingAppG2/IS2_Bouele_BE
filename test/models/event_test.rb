# == Schema Information
#
# Table name: events
#
#  id              :integer          not null, primary key
#  name            :string
#  description     :string
#  duration        :integer
#  organization_id :integer
#  start_datetime  :bigint(8)
#  max_voluntaries :integer          default(100)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  files           :string
#
# Indexes
#
#  index_events_on_organization_id  (organization_id)
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
