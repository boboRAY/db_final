class Restaurant < ActiveRecord::Base
  has_many :dishes
  has_many :restaurant_feedbacks
  has_many :orders
  has_many :discounts
end

# == Schema Information
#
# Table name: restaurants
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  address     :string(255)
#  phone       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#
