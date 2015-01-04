require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: locations
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  address          :string(255)
#  location_type_id :integer
#  created_at       :datetime
#  updated_at       :datetime
#
# Indexes
#
#  index_locations_on_location_type_id  (location_type_id)
#
