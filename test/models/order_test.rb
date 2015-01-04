require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: orders
#
#  id            :integer          not null, primary key
#  total_price   :integer
#  driver_id     :integer
#  user_id       :integer
#  location_id   :integer
#  restaurant_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#  discount_id   :integer
#
# Indexes
#
#  index_orders_on_driver_id      (driver_id)
#  index_orders_on_location_id    (location_id)
#  index_orders_on_restaurant_id  (restaurant_id)
#  index_orders_on_user_id        (user_id)
#
