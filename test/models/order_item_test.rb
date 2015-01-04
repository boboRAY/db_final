require 'test_helper'

class OrderItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: order_items
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  dish_id    :integer
#  quantity   :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_order_items_on_dish_id   (dish_id)
#  index_order_items_on_order_id  (order_id)
#
