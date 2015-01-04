require 'test_helper'

class DishTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: dishes
#
#  id            :integer          not null, primary key
#  restaurant_id :integer
#  name          :string(255)
#  description   :text
#  price         :integer
#  dish_type_id  :integer
#  created_at    :datetime
#  updated_at    :datetime
#
# Indexes
#
#  index_dishes_on_dish_type_id   (dish_type_id)
#  index_dishes_on_restaurant_id  (restaurant_id)
#
