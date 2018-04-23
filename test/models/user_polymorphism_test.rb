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

require 'test_helper'

class UserPolymorphismTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
