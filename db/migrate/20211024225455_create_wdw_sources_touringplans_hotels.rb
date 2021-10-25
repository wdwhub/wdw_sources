class CreateWdwSourcesTouringplansHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :wdw_sources_touringplans_hotels do |t|
    t.string "name"
    t.string "short_name"
    t.string "permalink"
    t.string "category_code"
    t.string "venue_permalink"
    t.string "address"
    t.string "city"
    t.string "state_code"
    t.string "zip_code"
    t.string "phone_number"
    t.string "url"
    t.boolean "off_site"
    t.boolean "water_sports"
    t.boolean "marina"
    t.boolean "beach"
    t.boolean "tennis"
    t.boolean "biking"
    t.boolean "suites"
    t.boolean "concierge_floor"
    t.boolean "room_service"
    t.boolean "wired_internet"
    t.boolean "wireless_internet"
    t.integer "num_rooms"
    t.string "theme"
    t.string "cost_range"
    t.boolean "shuttle_to_parks"
    t.string "cost_estimate"
    t.string "lodging_area_code"

    t.timestamps
    end
  end
end
