class Dish < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :dish_type
  has_many :dish_feedbacks
  has_many :order_items
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
