class CreateWdwSourcesTouringplansHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :wdw_sources_touringplans_hotels do |t|
      t.string :name
      t.string :short_name
      t.string :sort_name
      t.string :permalink
      t.string :category_code
      t.string :venue_permalink

      t.timestamps
    end
  end
end
