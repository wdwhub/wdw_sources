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

ActiveRecord::Schema.define(version: 2021_10_24_225455) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "wdw_sources_touringplans_attractions", force: :cascade do |t|
    t.string "name"
    t.string "permalink"
    t.string "short_name"
    t.string "venue_permalink"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wdw_sources_touringplans_dining_venues", force: :cascade do |t|
    t.string "name"
    t.string "permalink"
    t.string "short_name"
    t.string "venue_permalink"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wdw_sources_touringplans_hotels", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "sort_name"
    t.string "permalink"
    t.string "category_code"
    t.string "venue_permalink"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
