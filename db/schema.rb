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

ActiveRecord::Schema.define(version: 2020_03_18_123537) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

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

  create_table "clients_products", id: false, force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "client_id", null: false
  end

  create_table "clients_users", id: false, force: :cascade do |t|
    t.bigint "client_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "details_dispatch_orders", force: :cascade do |t|
    t.bigint "info_dispatch_order_id"
    t.bigint "product_id"
    t.integer "product_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["info_dispatch_order_id"], name: "index_details_dispatch_orders_on_info_dispatch_order_id"
    t.index ["product_id"], name: "index_details_dispatch_orders_on_product_id"
  end

  create_table "details_purchase_orders", force: :cascade do |t|
    t.bigint "info_purchase_order_id"
    t.bigint "product_id"
    t.integer "product_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["info_purchase_order_id"], name: "index_details_purchase_orders_on_info_purchase_order_id"
    t.index ["product_id"], name: "index_details_purchase_orders_on_product_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.datetime "start"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "info_dispatch_orders", force: :cascade do |t|
    t.bigint "client_id"
    t.string "client_order_purchase"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_info_dispatch_orders_on_client_id"
    t.index ["user_id"], name: "index_info_dispatch_orders_on_user_id"
  end

  create_table "info_purchase_orders", force: :cascade do |t|
    t.bigint "provider_id"
    t.bigint "user_id"
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

  create_table "locations_products", id: false, force: :cascade do |t|
    t.bigint "location_id", null: false
    t.bigint "product_id", null: false
  end

  create_table "locations_stock_by_locations", id: false, force: :cascade do |t|
    t.bigint "location_id", null: false
    t.bigint "stock_by_location_id", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "sku"
    t.string "name"
    t.bigint "ean"
    t.string "provider"
    t.string "category"
    t.string "subcategory"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "provider_id"
    t.index ["provider_id"], name: "index_products_on_provider_id"
  end

  create_table "products_providers", id: false, force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "provider_id", null: false
  end

  create_table "products_stock_by_locations", id: false, force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "stock_by_location_id", null: false
  end

  create_table "products_users", id: false, force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "user_id", null: false
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

  create_table "stock_by_locations", force: :cascade do |t|
    t.bigint "location_id"
    t.bigint "product_id"
    t.integer "product_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_stock_by_locations_on_location_id"
    t.index ["product_id"], name: "index_stock_by_locations_on_product_id"
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "details_dispatch_orders", "info_dispatch_orders"
  add_foreign_key "details_dispatch_orders", "products"
  add_foreign_key "details_purchase_orders", "info_purchase_orders"
  add_foreign_key "details_purchase_orders", "products"
  add_foreign_key "info_dispatch_orders", "clients"
  add_foreign_key "info_dispatch_orders", "users"
  add_foreign_key "info_purchase_orders", "providers"
  add_foreign_key "info_purchase_orders", "users"
  add_foreign_key "products", "providers"
  add_foreign_key "stock_by_locations", "locations"
  add_foreign_key "stock_by_locations", "products"
end
