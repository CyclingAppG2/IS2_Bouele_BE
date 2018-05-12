# == Schema Information
#
# Table name: attachments
#
#  id              :integer          not null, primary key
#  route           :string
#  comments        :string
#  forum_thread_id :integer
#  forum_post_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_attachments_on_forum_post_id    (forum_post_id)
#  index_attachments_on_forum_thread_id  (forum_thread_id)
#

class AttachmentSerializer < ActiveModel::Serializer
  attributes :id, :name


  belongs_to :forum_thread
  belongs_to :forum_post
end
