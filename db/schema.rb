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

ActiveRecord::Schema[7.0].define(version: 0) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "department", id: :integer, default: -> { "nextval('departments_department_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "department_name", limit: 255
    t.text "location"
    t.boolean "in_stock"
    t.text "holding_power"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", id: :serial, force: :cascade do |t|
    t.string "item_name", limit: 255
    t.integer "department_id"
    t.integer "PLU"
    t.text "color"
    t.boolean "organic"
    t.text "country_origin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "items", "departments", name: "items_department_id_fkey"
end
