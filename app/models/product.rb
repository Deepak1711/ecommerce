class Product < ApplicationRecord
  belongs_to :product_category
  belongs_to :return_policy
  has_many :product_variants
end
