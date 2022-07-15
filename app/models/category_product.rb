class CategoryProduct < ApplicationRecord
  balongs_to :products
  balongs_to :category
end
