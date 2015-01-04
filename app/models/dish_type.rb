class DishType < ActiveRecord::Base
  has_many :dishes
end

# == Schema Information
#
# Table name: dish_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#
