# == Schema Information
#
# Table name: tags
#
#  id              :integer          not null, primary key
#  title           :string
#  forum_thread_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_tags_on_forum_thread_id  (forum_thread_id)
#

require 'test_helper'

class TagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
