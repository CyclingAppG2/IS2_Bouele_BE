# == Schema Information
#
# Table name: reasons
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reason < ApplicationRecord
	has_one :ban
    validates :name, presence: true, length: {minimum: 20}
end
