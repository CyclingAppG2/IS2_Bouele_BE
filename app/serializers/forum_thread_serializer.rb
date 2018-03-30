class ForumThreadSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_id, :subforum_id

  belongs_to :user
  belongs_to :subforum
  has_many :forum_posts
  has_many :attachments
end
