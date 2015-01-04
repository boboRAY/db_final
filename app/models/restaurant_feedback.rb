class RestaurantFeedback < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user
end

# == Schema Information
#
# Table name: restaurant_feedbacks
#
#  id            :integer          not null, primary key
#  content       :text
#  restaurant_id :integer
#  user_id       :integer
#  created_at    :datetime
#  updated_at    :datetime
#
# Indexes
#
#  index_restaurant_feedbacks_on_restaurant_id  (restaurant_id)
#  index_restaurant_feedbacks_on_user_id        (user_id)
#
