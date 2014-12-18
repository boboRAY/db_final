class Dish < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :dish_type
  has_many :dish_feedbacks
end
