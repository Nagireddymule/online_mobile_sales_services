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

ActiveRecord::Schema.define(version: 20160628130852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "delars", force: :cascade do |t|
    t.string   "name"
    t.integer  "contact",    limit: 8
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "pincode"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "mobiles", force: :cascade do |t|
    t.string   "mobile_name"
    t.string   "brand_name"
    t.integer  "price"
    t.string   "mobile_type"
    t.string   "top_os"
    t.string   "battery_capacity"
    t.string   "screen_size"
    t.string   "ram"
    t.string   "resolution_type"
    t.string   "internet_features"
    t.string   "sim_type"
    t.string   "primary_camera"
    t.string   "os_version_name"
    t.string   "secondary_camera"
    t.string   "network_type"
    t.string   "clock_speed"
    t.string   "features"
    t.string   "number_of_cores"
    t.string   "availability"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "mobiles_delars", force: :cascade do |t|
    t.integer "delar_id"
    t.integer "mobile_id"
  end

  add_index "mobiles_delars", ["delar_id"], name: "index_mobiles_delars_on_delar_id", using: :btree
  add_index "mobiles_delars", ["mobile_id"], name: "index_mobiles_delars_on_mobile_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "role"
    t.integer  "contact_number"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "pincode"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
