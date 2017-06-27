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

  create_table "delars", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "contact",    limit: 8
    t.string   "address",    limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 255
    t.string   "country",    limit: 255
    t.integer  "pincode",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "mobiles", force: :cascade do |t|
    t.string   "mobile_name",        limit: 255
    t.string   "brand_name",         limit: 255
    t.integer  "price",              limit: 4
    t.string   "mobile_type",        limit: 255
    t.string   "top_os",             limit: 255
    t.string   "battery_capacity",   limit: 255
    t.string   "screen_size",        limit: 255
    t.string   "ram",                limit: 255
    t.string   "resolution_type",    limit: 255
    t.string   "internet_features",  limit: 255
    t.string   "sim_type",           limit: 255
    t.string   "primary_camera",     limit: 255
    t.string   "os_version_name",    limit: 255
    t.string   "secondary_camera",   limit: 255
    t.string   "network_type",       limit: 255
    t.string   "clock_speed",        limit: 255
    t.string   "features",           limit: 255
    t.string   "number_of_cores",    limit: 255
    t.string   "availability",       limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  create_table "mobiles_delars", force: :cascade do |t|
    t.integer "delar_id",  limit: 4
    t.integer "mobile_id", limit: 4
  end

  add_index "mobiles_delars", ["delar_id"], name: "index_mobiles_delars_on_delar_id", using: :btree
  add_index "mobiles_delars", ["mobile_id"], name: "index_mobiles_delars_on_mobile_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.integer  "current_sign_in_ip",     limit: 4
    t.integer  "last_sign_in_ip",        limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
    t.integer  "role",                   limit: 4
    t.integer  "contact_number",         limit: 4
    t.string   "address",                limit: 255
    t.string   "city",                   limit: 255
    t.string   "state",                  limit: 255
    t.string   "country",                limit: 255
    t.integer  "pincode",                limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
