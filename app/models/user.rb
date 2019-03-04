class User < ApplicationRecord
  has_many :trips
  has_many :locations, through: :trips
  has_many :comments
  has_many :memories

end
