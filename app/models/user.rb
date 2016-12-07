# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  password_digest :text
#  email           :text
#  username        :string
#  image           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  # If someone provides a password and a password_confirmation, encrypt it and save the encrypted value into the password_digest field.
  # It also provides a method called .authenticate
  # It adds a bunch of validation

  # u = User.first
  # u.recipes

  has_many :recipes
end
