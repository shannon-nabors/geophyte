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

ActiveRecord::Schema.define(version: 2019_10_17_184934) do

  create_table "leaders", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nation_leaders", force: :cascade do |t|
    t.integer "nation_id", null: false
    t.integer "leader_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["leader_id"], name: "index_nation_leaders_on_leader_id"
    t.index ["nation_id"], name: "index_nation_leaders_on_nation_id"
  end

  create_table "nations", force: :cascade do |t|
    t.string "name"
    t.string "flag"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "nation_leaders", "leaders"
  add_foreign_key "nation_leaders", "nations"
end
