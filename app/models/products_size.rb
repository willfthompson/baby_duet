class ProductsSize < ApplicationRecord
  # Join table only
  belongs_to :product
  belongs_to :size
end
