# == Schema Information
#
# Table name: type_contacts
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TypeContact < ApplicationRecord
    validates :name , presence: true, length: {minimum: 5}
end
