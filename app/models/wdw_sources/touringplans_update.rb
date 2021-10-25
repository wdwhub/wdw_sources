module WdwSources
    require 'touringplans'
  class TouringplansUpdate

    def self.list_all(venue_type)
      Touringplans.list_all(venue_type)
    end

    def self.sync_all(venue_type)
      
      list = Touringplans.list_all(venue_type)
      list.each do |item|
        if venue_type == "dining"
        cached_item = WdwSources::TouringplansDiningVenue.find_or_create_by(permalink: item.permalink) 
        # update full record with full db
        end
        cached_item = WdwSources::TouringplansAttraction.find_or_create_by(permalink: item.permalink) if venue_type == "attractions"
        cached_item = WdwSources::TouringplansHotel.find_or_create_by(permalink: item.permalink) if venue_type == "hotels"
      end
    end

  end
end
