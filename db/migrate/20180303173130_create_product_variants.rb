class CreateProductVariants < ActiveRecord::Migration[5.1]
  def change
    create_table :product_variants do |t|
      t.string :name
      t.string :color
      t.integer :price
      t.integer :quantity
      t.references :product
    end
  end
end
