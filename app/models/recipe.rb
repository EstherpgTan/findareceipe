# == Schema Information
#
# Table name: recipes
#
#  id          :integer          not null, primary key
#  name        :string
#  ingredients :text
#  method      :text
#  image       :string
#  category    :string
#  user_id     :integer
#  cuisine_id  :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Recipe < ActiveRecord::Base
  belongs_to :user
  belongs_to :cuisine
end
