# == Schema Information
#
# Table name: user_polymorphisms
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  user_data_id   :integer
#  user_data_type :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_user_polymorphisms_on_user_data_type_and_user_data_id  (user_data_type,user_data_id)
#

require 'test_helper'

class UserPolymorphismTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
