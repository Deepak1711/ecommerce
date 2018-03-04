# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
customer_categories = ['Male', 'Female', 'Kids']

customer_categories.each do |customer_category|
  CustomerCategory.create(title: customer_category)
end

product_categories = [['Clothing', 1], ['Clothing', 2], ['Clothing', 3], ['Soft furnishing', nil],
                      ['Toys', 3], ['Electricals', nil]]

product_categories.each do |product_category|
  ProductCategory.create(
    title: product_category.first, customer_category_id: product_category.last
  )
end

return_policies = [30, 10, 0]
return_policies.each do |return_policy|
  ReturnPolicy.create(days: return_policy)
end

ProductCategory.first.products.create(name: 'Jean US Wrangler', price: '2000', return_policy_id: 1)

Product.first.product_variants.create(name: 'Jean US Wrangler', color: 'Blue', price: '2000', quantity: 3)
