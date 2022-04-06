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

ActiveRecord::Schema[7.0].define(version: 2022_04_06_003154) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bill_drinks", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "drink_id", null: false
    t.bigint "bill_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bill_id"], name: "index_bill_drinks_on_bill_id"
    t.index ["drink_id"], name: "index_bDiscaill_drinks_on_drink_id"
  end

  create_table "bill_foods", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "food_id", null: false
    t.bigint "bill_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bill_id"], name: "index_bill_foods_on_bill_id"
    t.index ["food_id"], name: "index_bill_foods_on_food_id"
  end

  create_table "bills", force: :cascade do |t|
    t.float "total"
    t.bigint "user_id", null: false
    t.bigint "table_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["table_id"], name: "index_bills_on_table_id"
    t.index ["user_id"], name: "index_bills_on_user_id"
  end

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tables", force: :cascade do |t|
    t.string "number"
    t.integer "people"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_tables_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bill_drinks", "bills"
  add_foreign_key "bill_drinks", "drinks"
  add_foreign_key "bill_foods", "bills"
  add_foreign_key "bill_foods", "foods"
  add_foreign_key "bills", "tables"
  add_foreign_key "bills", "users"
  add_foreign_key "tables", "users"
end
