class Memory < ApplicationRecord
  belongs_to :trip
  belongs_to :user
  has_many :comments
  has_many :locations, through: :trips
end
