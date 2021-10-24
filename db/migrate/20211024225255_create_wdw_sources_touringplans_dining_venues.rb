class CreateWdwSourcesTouringplansDiningVenues < ActiveRecord::Migration[6.1]
  def change
    create_table :wdw_sources_touringplans_dining_venues do |t|
      t.string :name
      t.string :permalink
      t.string :short_name
      t.string :venue_permalink

      t.timestamps
    end
  end
end
