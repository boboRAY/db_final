class Location < ActiveRecord::Base
  belongs_to :location_type
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
