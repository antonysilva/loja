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

ActiveRecord::Schema.define(version: 2018_09_27_190653) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.integer "number"
    t.string "neghborhood"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_addresses_on_customer_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "phone"
    t.string "mobile"
    t.string "email"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_contacts_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "cpf"
    t.date "birthday"
    t.string "gener"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "featureds", force: :cascade do |t|
    t.bigint "product_id"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_featureds_on_product_id"
  end

  create_table "logins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_logins_on_customer_id"
    t.index ["email"], name: "index_logins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_logins_on_reset_password_token", unique: true
  end

  create_table "product_information_items", force: :cascade do |t|
    t.string "item"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_informations", force: :cascade do |t|
    t.bigint "product_information_item_id"
    t.string "description"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_informations_on_product_id"
    t.index ["product_information_item_id"], name: "index_product_informations_on_product_information_item_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "unit_price"
    t.integer "evaluation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shipping_addresses", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.integer "number"
    t.string "neghborhood"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_shipping_addresses_on_customer_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "cnpj"
    t.string "site"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "customers"
  add_foreign_key "contacts", "customers"
  add_foreign_key "featureds", "products"
  add_foreign_key "logins", "customers"
  add_foreign_key "product_informations", "product_information_items"
  add_foreign_key "product_informations", "products"
  add_foreign_key "shipping_addresses", "customers"
end
