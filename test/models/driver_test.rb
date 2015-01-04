require 'test_helper'

class DriverTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: drivers
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  phone             :string(255)
#  working_time      :string(255)
#  transportation_id :integer
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_drivers_on_transportation_id  (transportation_id)
#
