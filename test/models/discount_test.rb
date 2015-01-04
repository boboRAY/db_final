require 'test_helper'

class DiscountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: discounts
#
#  id            :integer          not null, primary key
#  description   :text
#  title         :string(255)
#  restaurant_id :integer
#  percentage    :float
#  created_at    :datetime
#  updated_at    :datetime
#
# Indexes
#
#  index_discounts_on_restaurant_id  (restaurant_id)
#
