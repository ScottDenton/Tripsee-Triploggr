class User < ApplicationRecord
  has_many :trips
  has_many :locations, through: :trips
  has_many :comments
  has_many :memories
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :name, presence: true
  validates :password, presence: true








end
