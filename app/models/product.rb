class Product < ApplicationRecord
  validates :title, :description, :image_url, presence: true
  has_many :join_table_products_carts, dependent: :nullify
end
