# == Schema Information
#
# Table name: cuisines
#
#  id         :integer          not null, primary key
#  style      :string
#  created_at :datetime
#  updated_at :datetime
#

class Cuisine < ActiveRecord::Base
  has_many :recipes
end
