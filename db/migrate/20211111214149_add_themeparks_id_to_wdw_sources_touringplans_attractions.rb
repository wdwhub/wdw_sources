class AddThemeparksIdToWdwSourcesTouringplansAttractions < ActiveRecord::Migration[6.1]
  def change
    add_column :wdw_sources_touringplans_attractions, :themeparks_id, :text
  end
end
