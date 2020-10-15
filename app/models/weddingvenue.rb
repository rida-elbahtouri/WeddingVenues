class Weddingvenue < ApplicationRecord
    validates :name,presence: true
    validates :description,presence: true
    validates :location,presence: true
    validates :price,presence: true

    has_many :favourites
    has_one_attached :photo
end