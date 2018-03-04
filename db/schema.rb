# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180303173130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customer_categories", force: :cascade do |t|
    t.string "title"
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "title"
    t.bigint "customer_category_id"
    t.index ["customer_category_id"], name: "index_product_categories_on_customer_category_id"
  end

  create_table "product_variants", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.integer "price"
    t.integer "quantity"
    t.bigint "product_id"
    t.index ["product_id"], name: "index_product_variants_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.bigint "product_category_id"
    t.bigint "return_policy_id"
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
    t.index ["return_policy_id"], name: "index_products_on_return_policy_id"
  end

  create_table "return_policies", force: :cascade do |t|
    t.integer "days"
  end

end
