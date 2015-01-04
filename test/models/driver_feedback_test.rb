require 'test_helper'

class DriverFeedbackTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: driver_feedbacks
#
#  id          :integer          not null, primary key
#  description :text
#  driver_id   :integer
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_driver_feedbacks_on_driver_id  (driver_id)
#  index_driver_feedbacks_on_user_id    (user_id)
#
