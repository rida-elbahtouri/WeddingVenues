class User < ApplicationRecord
  has_secure_password
  # has_secure_token
  validates :username, presence: true, uniqueness: true
  has_many :favourites
  has_many :venues, through: :favourites, source: 'weddingvenue'
end
