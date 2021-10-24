require 'rails_helper'

module WdwSources
  RSpec.describe TouringplansAttraction, type: :model do
    # pending "add some examples to (or delete) #{__FILE__}"

    it 'should create an attraction' do
      attraction = create(:wdw_sources_touringplans_attraction)

      expect(WdwSources::TouringplansAttraction.count).to eq(22)
    end
  end
end
