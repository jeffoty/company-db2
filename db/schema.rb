# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_06_054438) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_trgm"
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", precision: nil, null: false
    t.string "service_name", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "admin_users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "constituencies", force: :cascade do |t|
    t.string "name"
    t.bigint "depo_site_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["depo_site_id"], name: "index_constituencies_on_depo_site_id"
  end

  create_table "delayed_jobs", id: :serial, force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at", precision: nil
    t.datetime "locked_at", precision: nil
    t.datetime "failed_at", precision: nil
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "depo_sites", force: :cascade do |t|
    t.string "name"
    t.bigint "location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_depo_sites_on_location_id"
  end

  create_table "exception_hunter_error_groups", force: :cascade do |t|
    t.string "error_class_name", null: false
    t.string "message"
    t.integer "status", default: 0
    t.text "tags", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message"], name: "index_exception_hunter_error_groups_on_message", opclass: :gin_trgm_ops, using: :gin
    t.index ["status"], name: "index_exception_hunter_error_groups_on_status"
  end

  create_table "exception_hunter_errors", force: :cascade do |t|
    t.string "class_name", null: false
    t.string "message"
    t.datetime "occurred_at", precision: nil, null: false
    t.json "environment_data"
    t.json "custom_data"
    t.json "user_data"
    t.string "backtrace", default: [], array: true
    t.bigint "error_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["error_group_id"], name: "index_exception_hunter_errors_on_error_group_id"
  end

  create_table "financial_infos", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.string "transaction_type"
    t.string "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_financial_infos_on_order_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "location_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_inventories_on_location_id"
    t.index ["product_id"], name: "index_inventories_on_product_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logistics", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.integer "tracking_number"
    t.integer "shiping_date"
    t.integer "reciving_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_logistics_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "product_id"
    t.string "type"
    t.integer "date"
    t.integer "amount_paid"
    t.string "payment_code"
    t.string "status"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "special_economic_group_id", null: false
    t.index ["special_economic_group_id"], name: "index_orders_on_special_economic_group_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "settings", force: :cascade do |t|
    t.string "key", null: false
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["key"], name: "index_settings_on_key", unique: true
  end

  create_table "special_economic_groups", force: :cascade do |t|
    t.string "name"
    t.integer "group_leader_id"
    t.integer "group_size"
    t.bigint "ward_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ward_id"], name: "index_special_economic_groups_on_ward_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.boolean "allow_password_change", default: false
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "first_name", default: ""
    t.string "last_name", default: ""
    t.string "username", default: ""
    t.integer "role_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.json "tokens"
    t.bigint "location_id", null: false
    t.bigint "depo_site_id", null: false
    t.index ["depo_site_id"], name: "index_users_on_depo_site_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["location_id"], name: "index_users_on_location_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  create_table "wards", force: :cascade do |t|
    t.string "name"
    t.bigint "constituency_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["constituency_id"], name: "index_wards_on_constituency_id"
  end

  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "constituencies", "depo_sites"
  add_foreign_key "depo_sites", "locations"
  add_foreign_key "exception_hunter_errors", "exception_hunter_error_groups", column: "error_group_id"
  add_foreign_key "financial_infos", "orders"
  add_foreign_key "inventories", "locations"
  add_foreign_key "inventories", "products"
  add_foreign_key "logistics", "orders"
  add_foreign_key "orders", "special_economic_groups"
  add_foreign_key "special_economic_groups", "wards"
  add_foreign_key "users", "depo_sites"
  add_foreign_key "users", "locations"
  add_foreign_key "wards", "constituencies"
end
