require 'rails_helper'

module WdwSources
  RSpec.describe TouringplansUpdate, type: :model do
    # pending "add some examples to (or delete) #{__FILE__}"

    context "when updating attractions" do
      it 'should support updating all cached attractions' do
          venues = "attractions"
          cached_places =  WdwSources::TouringplansUpdate.sync_all(venues)

          expect(cached_places.count).to eq(166)
      end      
    end
    
    context "when updating dining venues" do
      it 'should support updating all cached dining venues' do
          venues = "dining"
          cached_places =  WdwSources::TouringplansUpdate.sync_all(venues)

          expect(cached_places.count).to eq(87)
      end      
    end
    
    context "when updating hotels" do
      it 'should support updating all cached hotels' do
          venues = "hotels"
          cached_places =  WdwSources::TouringplansUpdate.sync_all(venues)

          expect(cached_places.count).to eq(38)
      end      
    end
    
    
    
  end
end
