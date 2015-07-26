ActiveRecord::Schema.define(version: 20150725205436) do

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
  end

  create_table "parts", force: :cascade do |t|
    t.string   "part_number"
    t.string   "description"
    t.integer  "quantity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "order_id"
    t.string   "supplier"
  end

  add_index "parts", ["order_id"], name: "index_parts_on_order_id"

  create_table "printers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "regions", force: :cascade do |t|
    t.string   "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
