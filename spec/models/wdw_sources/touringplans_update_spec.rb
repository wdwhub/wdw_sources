require 'rails_helper'

module WdwSources
  RSpec.describe TouringplansUpdate, type: :model do
    # pending "add some examples to (or delete) #{__FILE__}"
    
    context "when updating an attraction" do
      # it 'should support updating all cached attractions' do
      #     venues = "attractions"
      #     cached_places =  WdwSources::TouringplansUpdate.sync_all(venues)

      #     expect(cached_places.count).to eq(166)
      # end
      interest = "attractions"
      tp_list_item_permalink="mad-tea-party"
      tp_list_item_venue_permalink="magic-kingdom"
      subject =  WdwSources::TouringplansUpdate._cache_tp_place(tp_list_item_venue_permalink, 
                                                                tp_list_item_permalink, 
                                                                interest
                                                                )

      it "should cache a place with the permalink" do
        expect(subject.permalink).to eq("mad-tea-party")
      end
      
      it "should cache a place with the venue_permalink" do
        expect(subject.venue_permalink).to eq("magic-kingdom")
      end

      it "should cache a place with the fastpass_booth" do
        expect(subject.fastpass_booth).to eq(false)
      end
      
      it "should cache a place with the open_emh_morning" do
        expect(subject.open_emh_morning).to eq(true)
      end
      
      it "should cache a place with the crowd_calendar_version" do
        expect(subject.crowd_calendar_version).to eq(4)
      end
      
      it "should cache a place with the latitude" do
        expect(subject.latitude).to eq("28.42002304")
      end
      
      it "should cache a place with the longitude" do
        expect(subject.longitude).to eq("-81.57982489")
      end
      
      it "should cache a place with the duration" do
        expect(subject.duration).to eq(1.5)
      end
      
    end
    
    context "when updating dining venues" do
      # it 'should support updating all cached attractions' do
      #     venues = "attractions"
      #     cached_places =  WdwSources::TouringplansUpdate.sync_all(venues)

      #     expect(cached_places.count).to eq(166)
      # end
      interest = "dining"
      tp_list_item_permalink= "caseys-corner"
      tp_list_item_venue_permalink= "magic-kingdom"
      subject =  WdwSources::TouringplansUpdate._cache_tp_place(tp_list_item_venue_permalink, 
                                                                tp_list_item_permalink, 
                                                                interest
                                                                )

      it "should cache a place with the permalink" do
        expect(subject.permalink).to eq("caseys-corner")
      end
      
      it "should cache a place with the venue_permalink" do
        expect(subject.venue_permalink).to eq("magic-kingdom")
      end

      it "should cache a place with the entree_range" do
        expect(subject.entree_range).to eq("Lunch and Dinner: Adult $9-13")
      end
      
      it "should cache a place with the cost_code" do
        expect(subject.cost_code).to eq("inexpensive")
      end
      
      it "should cache a place with the cuisine" do
        expect(subject.cuisine).to eq("American")
      end
      
      it "should cache a place with the latitude" do
        expect(subject.latitude).to eq("28.418112")
      end
      
      it "should cache a place with the longitude" do
        expect(subject.longitude).to eq("-81.581281")
      end
      
      it "should cache a place with the category_code" do
        expect(subject.category_code).to eq("counter_service")
      end
    end
    context "when updating hotels" do
      # it 'should support updating all cached attractions' do
      #     venues = "attractions"
      #     cached_places =  WdwSources::TouringplansUpdate.sync_all(venues)

      #     expect(cached_places.count).to eq(166)
      # end
      interest = "hotels"
      tp_list_item_permalink = "fort-wilderness-campsites"
      tp_list_item_venue_permalink= "walt-disney-world"
      subject =  WdwSources::TouringplansUpdate._cache_tp_place(tp_list_item_venue_permalink, 
                                                                tp_list_item_permalink, 
                                                                interest
                                                                )

      it "should cache a place with the permalink" do
        expect(subject.permalink).to eq("fort-wilderness-campsites")
      end
      
      it "should cache a place with the venue_permalink" do
        expect(subject.venue_permalink).to eq("walt-disney-world")
      end

      it "should cache a place with the address" do
        expect(subject.address).to eq("4510 North Fort Wilderness Trail")
      end
      
      it "should cache a place with the city" do
        expect(subject.city).to eq("Orlando")
      end
      
      it "should cache a place with the url" do
        expect(subject.url).to eq("http://disneyworld.disney.go.com/resorts/cabins-at-fort-wilderness-resort/")
      end
      
      it "should cache a place with the theme" do
        expect(subject.theme).to eq("Camping")
      end
      
      it "should cache a place with the cost_range" do
        expect(subject.cost_range).to eq("$94 - $281")
      end
      
      it "should cache a place with the category_code" do
        expect(subject.category_code).to eq("campground")
      end
    end
  end
end
