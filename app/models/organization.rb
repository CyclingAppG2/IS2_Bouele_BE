# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  type                   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#


class Organization < User
    has_one :organization_category
	has_many :minicipalities
	has_many :events
    validates :NIT, presence: true, length: {minimum: 5}
    validates :mainaddress, presence: true, length: {minimum: 5}
    validates :firm, presence: true, length: {minimum: 5}
    validates :score, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 10 }
end
