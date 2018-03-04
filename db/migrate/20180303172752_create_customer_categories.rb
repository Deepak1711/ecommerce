class CreateCustomerCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_categories do |t|
      t.string :title
    end
  end
end
