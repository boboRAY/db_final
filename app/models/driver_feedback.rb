class DriverFeedback < ActiveRecord::Base
  belongs_to :driver
  belongs_to :user
end
