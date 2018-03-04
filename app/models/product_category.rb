class ProductCategory < ApplicationRecord
  belongs_to :customer_category, optional: true
  has_many :products
end
