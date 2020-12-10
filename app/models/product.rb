class Product < ApplicationRecord
  has_rich_text :content
  has_many_attached :images
  has_many :products_sizes
  has_many :sizes, through: :products_sizes
end
