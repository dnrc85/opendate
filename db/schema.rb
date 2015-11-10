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

ActiveRecord::Schema.define(version: 20151110005041) do

  create_table "loans", force: :cascade do |t|
    t.string   "customer"
    t.string   "printer"
    t.string   "serial_number"
    t.string   "shipped_date"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.text     "reason_for_repair"
    t.text     "details"
    t.string   "psu_type"
    t.string   "psu_serial_number"
    t.string   "contact_name"
    t.string   "tel_number"
    t.string   "address"
    t.text     "completed_at"
  end

  create_table "low_stocks", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "part_number"
    t.string   "description"
    t.integer  "quantity_in_stock"
    t.integer  "quantity_required"
    t.integer  "user_id"
    t.text     "completed_at"
    t.string   "due_date"
  end

  add_index "low_stocks", ["user_id"], name: "index_low_stocks_on_user_id"

  create_table "orders", force: :cascade do |t|
    t.integer  "order_number"
    t.string   "customer"
    t.string   "printer"
    t.integer  "quantity"
    t.string   "order_date"
    t.string   "due_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "region"
    t.string   "status"
    t.string   "notes"
    t.text     "completed_at"
  end

  create_table "parts", force: :cascade do |t|
    t.string   "part_number"
    t.string   "description"
    t.integer  "quantity"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "order_id"
    t.string   "supplier"
    t.string   "ordered_date"
  end

  add_index "parts", ["order_id"], name: "index_parts_on_order_id"

  create_table "printers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "psus", force: :cascade do |t|
    t.string   "serial_number"
    t.string   "type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "psu_type"
  end

  create_table "regions", force: :cascade do |t|
    t.string   "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treatments", force: :cascade do |t|
    t.string   "part_number"
    t.string   "description"
    t.string   "quantity"
    t.string   "supplier"
    t.string   "process"
    t.string   "date_sent"
    t.string   "date_due_back"
    t.string   "notes"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "completed_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
