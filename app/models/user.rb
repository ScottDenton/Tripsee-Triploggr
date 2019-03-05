class User < ApplicationRecord
  has_many :trips
  has_many :locations, through: :trips
  has_many :comments
  has_many :memories
  # attribute :image_url, :string, default: "https://pngimage.net/wp-content/uploads/2018/05/default-user-profile-image-png-6.png"
end
