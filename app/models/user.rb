class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  has_many :favourites
  has_many :venues, through: :favourites, source: 'weddingvenue'
end
