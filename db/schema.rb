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

ActiveRecord::Schema.define(version: 2020_02_24_171911) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "direction"
    t.string "payment_condition"
    t.integer "phone"
    t.string "email"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "info_dispatch_orders", force: :cascade do |t|
    t.bigint "client_id"
    t.string "client_name"
    t.string "client_order_purchase"
    t.bigint "user_id"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_info_dispatch_orders_on_client_id"
    t.index ["user_id"], name: "index_info_dispatch_orders_on_user_id"
  end

  create_table "info_purchase_orders", force: :cascade do |t|
    t.bigint "provider_id"
    t.string "provider_name"
    t.bigint "user_id"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_info_purchase_orders_on_provider_id"
    t.index ["user_id"], name: "index_info_purchase_orders_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "sku"
    t.string "name"
    t.bigint "ean"
    t.string "proveder"
    t.string "category"
    t.string "subcategory"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.string "direction"
    t.string "payment_condition"
    t.integer "phone"
    t.string "email"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "info_dispatch_orders", "clients"
  add_foreign_key "info_dispatch_orders", "users"
  add_foreign_key "info_purchase_orders", "providers"
  add_foreign_key "info_purchase_orders", "users"
end
