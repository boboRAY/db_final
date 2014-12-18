class Order < ActiveRecord::Base
  belongs_to :driver
  belongs_to :user
  belongs_to :location
  belongs_to :restaurant
  has_many :order_items
end
