class Product < ApplicationRecord
  has_rich_text :content
  has_many_attached :images
  has_and_belongs_to_many :sizes
end
