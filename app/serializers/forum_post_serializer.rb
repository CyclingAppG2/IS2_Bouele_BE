class ForumPostSerializer < ActiveModel::Serializer
  attributes :id,  :text, :user_id, :forum_thread_id

  belongs_to :forum_thread
  belongs_to :user
  has_many :attachments
end
