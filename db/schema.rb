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

ActiveRecord::Schema.define(version: 2020_09_30_063038) do

  create_table "urls", force: :cascade do |t|
    t.string "link", null: false
    t.string "shortlink", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["link"], name: "index_urls_on_link", unique: true
    t.index ["shortlink"], name: "index_urls_on_shortlink", unique: true
  end

  create_table "visitors", force: :cascade do |t|
    t.string "ip_address", null: false
    t.string "browser"
    t.string "platform"
    t.string "device"
    t.string "region"
    t.integer "url_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["url_id"], name: "index_visitors_on_url_id"
  end

  add_foreign_key "visitors", "urls"
end
