# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_12_205738) do

  create_table "crew_members", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "employer"
    t.float "rate"
    t.integer "crew_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "role"
    t.index ["crew_id"], name: "index_crew_members_on_crew_id"
  end

  create_table "crews", force: :cascade do |t|
    t.integer "rating"
    t.text "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "productions", force: :cascade do |t|
    t.string "name"
    t.string "client"
    t.integer "crew_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crew_id"], name: "index_productions_on_crew_id"
  end

  add_foreign_key "crew_members", "crews"
  add_foreign_key "productions", "crews"
end
