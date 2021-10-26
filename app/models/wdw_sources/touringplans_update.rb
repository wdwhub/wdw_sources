module WdwSources
    require 'touringplans'
  class TouringplansUpdate

    def self.list_all(venue_type)
      Touringplans.list_all(venue_type)
    end

    def self.sync_all(interest)
      
      tp_list = Touringplans.list_all(interest)
      tp_list.each do |tp_list_item|
        tp_list_item_venue_permalink = tp_list_item.venue_permalink
        tp_list_item_permalink = tp_list_item.permalink

        _cache_tp_place(tp_list_item_venue_permalink, tp_list_item_permalink, interest)
      end
    end

    def self._cache_tp_place(tp_list_item_venue_permalink, tp_list_item_permalink, interest)
      return "Missing tp_list_item_venue_permalink" if tp_list_item_venue_permalink.to_s.length < 3
      return "Missing tp_list_item_permalink" if tp_list_item_permalink.to_s.length < 3
      return "Missing interest" if interest.to_s.length < 3

      cache_resources       = {"attractions" => WdwSources::TouringplansAttraction, 
                               "dining"      => WdwSources::TouringplansDiningVenue,
                               "hotels"      => WdwSources::TouringplansHotel
                              }
                              
      cache_resource        = cache_resources[interest]
      cache_item            = cache_resource.find_or_create_by(permalink: tp_list_item_permalink)

      tp_item_full_record  = Touringplans.show(tp_list_item_venue_permalink,interest, tp_list_item_permalink)

      vp = {venue_permalink: tp_list_item_venue_permalink}
      full_record_hash = vp.merge(tp_item_full_record.to_h)
      cache_item.update!(full_record_hash)
      # tp_item_full_record.to_h
      cache_item
    end    

    # def self.cache_all_hotels
    #     interest = "hotels"

    #     hotels = Touringplans.list_all(interest)
    #     hotels.each do |hotel|
    #         cached_hotel = Cached::TouringplansHotel.find_or_create_by(permalink: hotel.permalink)
    #         cached_hotel.update!(name: hotel.name, short_name: hotel.sort_name, venue_permalink: hotel.venue_permalink)

    #         tp_hotel_full = Touringplans.show(hotel.venue_permalink,interest, hotel.permalink)
    #         cached_hotel.update!(tp_hotel_full.to_h)
    #     end
    #     cached_hotels = Cached::TouringplansHotel.all
    # end

    
  end
end
