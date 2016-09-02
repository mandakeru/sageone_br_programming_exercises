# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160901002627) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.string   "Categoria"
    t.string   "category2"
    t.text     "unity"
    t.text     "description"
    t.integer  "indentification"
    t.decimal  "cost"
    t.decimal  "sale_price1"
    t.text     "observation"
    t.integer  "provider"
    t.integer  "stock"
    t.integer  "bar_code"
    t.decimal  "sale_price2"
    t.decimal  "sale_price3"
    t.integer  "minimum_stock"
    t.integer  "max_stock"
    t.integer  "stock_purchase"
    t.integer  "sale_unit"
    t.integer  "ncm"
    t.string   "brand"
    t.decimal  "weight"
    t.decimal  "size"
    t.integer  "inactive"
    t.integer  "product_type"
    t.string   "category3"
    t.string   "category4"
    t.integer  "composition"
    t.integer  "feedstock"
    t.integer  "exp_material"
    t.integer  "to_sale"
    t.string   "currency"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "products", ["bar_code"], name: "index_products_on_bar_code", using: :btree
  add_index "products", ["provider"], name: "index_products_on_provider", using: :btree

end
