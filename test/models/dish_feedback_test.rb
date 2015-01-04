require 'test_helper'

class DishFeedbackTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: dish_feedbacks
#
#  id         :integer          not null, primary key
#  content    :text
#  dish_id    :integer
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_dish_feedbacks_on_dish_id  (dish_id)
#  index_dish_feedbacks_on_user_id  (user_id)
#
