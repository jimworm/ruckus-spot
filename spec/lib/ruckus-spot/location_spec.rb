describe "RuckusSpot::Location" do
  describe ".all" do
    context "without a venue id" do
      it "returns nil" do
        expect{RuckusSpot::Location.all}.to raise_error(ActiveResource::MissingPrefixParam)
      end
    end
    
    context "with a valid venue id" do
      it "returns all locations from that venue" do
        locations = RuckusSpot::Location.all(params: {venue_id: 'rksg-dev'})
        
        expect(locations).to be_a_kind_of(Enumerable)
        expect(locations).to include(a_kind_of(RuckusSpot::Location))
      end
      
      context "and with a mac address" do
        let(:macs) { ['8086F2AB1A35'] }
        
        it "returns only locations for that mac address" do
          locations = RuckusSpot::Location.all(params: {venue_id: 'rksg-dev', macs: macs})
          
          expect(locations).to be_a_kind_of(Enumerable)
          expect(locations).to include(a_kind_of(RuckusSpot::Location))
          expect(locations.map(&:mac).uniq).to eq macs
        end
      end
    end
  end
end
