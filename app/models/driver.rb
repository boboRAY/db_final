class Driver < ActiveRecord::Base
  belongs_to :transportation
  has_many :driver_feedbacks
  has_many :orders
end
