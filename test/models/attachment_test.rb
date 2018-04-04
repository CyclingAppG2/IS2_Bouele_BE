# == Schema Information
#
# Table name: attachments
#
#  id              :integer          not null, primary key
#  route           :string
#  comments        :string
#  event_id        :integer
#  forum_thread_id :integer
#  forum_post_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_attachments_on_event_id         (event_id)
#  index_attachments_on_forum_post_id    (forum_post_id)
#  index_attachments_on_forum_thread_id  (forum_thread_id)
#

require 'test_helper'

class AttachmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
