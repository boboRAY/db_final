class ToBuy < ActiveRecord::Base
  belongs_to :user
  belongs_to :dish
end

# == Schema Information
#
# Table name: to_buys
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  dish_id    :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_to_buys_on_dish_id  (dish_id)
#  index_to_buys_on_user_id  (user_id)
#
