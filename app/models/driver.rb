class Driver < ActiveRecord::Base
  belongs_to :transportation
  has_many :driver_feedbacks
end
