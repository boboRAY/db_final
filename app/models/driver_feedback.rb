class DriverFeedback < ActiveRecord::Base
  belongs_to :driver
  belongs_to :user
end

# == Schema Information
#
# Table name: driver_feedbacks
#
#  id         :integer          not null, primary key
#  content    :text
#  driver_id  :integer
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_driver_feedbacks_on_driver_id  (driver_id)
#  index_driver_feedbacks_on_user_id    (user_id)
#
