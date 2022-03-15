class Product < ApplicationRecord
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0}
  validates :title, uniqueness: {case_sensitive: false}
  validates :image_url,
    format: {
      with: /\.(jpg|png|gif)\z/i,
      message: "L'image doit être au format jpg,png ou gif"
    },
    allow_blank: true
end
