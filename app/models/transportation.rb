class Transportation < ActiveRecord::Base
  has_many :drivers
end

# == Schema Information
#
# Table name: transportations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#
