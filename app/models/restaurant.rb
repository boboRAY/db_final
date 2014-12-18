class Restaurant < ActiveRecord::Base
  has_many :dishes
  has_many :restaurant_feedbacks
  has_many :orders
  has_many :discounts
end
