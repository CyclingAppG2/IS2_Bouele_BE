# == Schema Information
#
# Table name: subforums
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  admin_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_subforums_on_admin_id  (admin_id)
#

class Subforum < ApplicationRecord
	belongs_to :admin
	has_many :forum_threads
    validates :name , presence: true, length: {minimum: 5}
    validates :description, presence: true, length: {minimum: 5}
end
